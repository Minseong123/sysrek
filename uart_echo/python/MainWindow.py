#!/usr/bin/env python

from functools import partial
import struct

from PyQt4 import QtCore, QtGui
from PyQt4.QtCore import Qt

from Logger import Logger
from COMMngr import COMMngr
from COMSSClient import COMSSClient
from TCPSSClient import TCPSSClient
from Floating import Floating
import myThread

class MainWindow(QtGui.QMainWindow):
    _LOGFILE='uartmemory.log'
    _SLIDERRANGE=100000

    def __init__(self, stub=False):
        super(MainWindow, self).__init__()

        self.stubbing = stub
        self.lastRW = 'write'
        self.regTableArrayRowsVisible = None
        self.dontUpdateEditValueOnce = False

        self.setUpGUI()
        self.createActions()
        self.createMenus()
        self.createConnections()
        self.statusBar()

        self.logfile = open(MainWindow._LOGFILE, 'a');
        self.logfile.write("=================================================================\n");
        def print_wrapper(x):
            try:
                text = str(x)
            except:
                try:
                    text = x.encode('utf-8')
                except:
                    try:
                        text = x.toUtf8() # for QString
                    except:
                        text = "Encoding error"
            self.logfile.write(text+"\n")
            print text

        Logger.getInstance().update.connect(print_wrapper)
        if self.stubbing:
            Logger.getInstance().info("APPLICATION IS STUBBED")
        Logger.getInstance().log("Main window is up")

        self.comRefresh()
        #self.setStatus("Unknown")
        self.recreateRegisterTable()
        self.updateGUIConnectChange(False)
        
    # called on destruction of this object    
    def closeEvent(self, event):
        if self.comPortIsConnected():
            self.tryDisconnectFromCOMPort()
        self.logfile.close()
        QtGui.qApp.quit()
        event.ignore()
        #exit()

    @QtCore.pyqtSlot()
    def about(self):
        QtGui.QMessageBox.about(self, "About",
                "<p>FPGA - PC communication application.</p><p>Authors:<br/>Krzysztof Kapusta (krz.kapusta@gmail.com)<br/>Mateusz Furdyna (mateuszfurdyna@gmail.com)</p><p>AGH 2014</p>")

    def comRefresh(self):
        comPorts = COMMngr.getAllPorts()
        current = self.comPortCombo.currentText()

        self.comPortCombo.clear()
        self.comPortCombo.addItems(list(comPorts))

        findpos = self.comPortCombo.findText(current)
        self.comPortCombo.setCurrentIndex(findpos if findpos > 0 else 0)

        Logger.getInstance().log("Updated COM ports: " + str(comPorts))
         
    @QtCore.pyqtSlot()
    def saveConfig(self):
        fileName = QtGui.QFileDialog.getSaveFileName(self, "Save configuration ...", "", selectedFilter='*.txt')
        Logger().getInstance().log("Saving configuration to file " + str(fileName))

        with open(fileName, 'w') as f:
            f.write("NoRegisters=%d\n" % (self.regTableArrayRowsVisible))
            for i in range(self.regTableArrayRowsVisible):
                val = self.getEnteredRegisterValue(i)
                f.write("RowSetting=%d,%s,%s,%d,%d\n" % (i, 
                    self.getCaptionFromRegisterTable(i).text(),
                    str(val) if val != None else "None",
                    int(self.getIntEditfieldFromRegisterTable(i).text()), 
                    self.getSignFromRegisterTable(i).isChecked()))

    QtCore.pyqtSlot()
    def loadConfig(self):
        fileName = QtGui.QFileDialog.getOpenFileName(self, "Load configuration ...", "", selectedFilter='*.txt')
        Logger().getInstance().log("Reading configuration from file " + str(fileName))

        with open(fileName, 'r') as f:
            counter = 0
            while True:
                line = f.readline().strip()
                if line == "":
                    break

                counter = counter + 1
                command = line.split("=")
                if len(command) != 2:
                    Logger().getInstance().warn("Error in configuration file line %d: %s" % (counter, line))
                    continue

                if command[0] == "NoRegisters":
                    Logger().getInstance().log("Loaded number of register value " + command[1])
                    self.regTableRegistersLine.setText(command[1])
                    self.recreateRegisterTable()
                elif command[0] == "RowSetting":
                    options = command[1].split(",")
                    if len(options) != 5:
                        Logger.getInstance().warn("Error in configuration file line %d: %s" % (counter, line))
                        continue

                    Logger.getInstance().log("Loaded row settings with: " + command[1])
                    row = int(options[0])
                    self.getCaptionFromRegisterTable(row).setText(options[1])
                    self.getEditfieldFromRegisterTable(row).setText("" if options[2] == "None" else str(float(options[2])))
                    self.getIntEditfieldFromRegisterTable(row).setText(str(int(options[3])))
                    self.getSignFromRegisterTable(row).setChecked(bool(int(options[4])))


    @staticmethod
    def dataToHexFormat(data):
        return ":".join(x.encode('hex') for x in data)

    def sendRawDataCOM(self, data):
        formatted = self.dataToHexFormat(data)
        Logger.getInstance().log("COM sending raw data " + formatted)
        self.comHistoryTextField.appendPlainText("--> " + formatted)
        if not self.stubbing:
            self.comConnectionThreadObject.send(data)
        else:
            self.comConnectionThreadObject.send(formatted)

    @QtCore.pyqtSlot(int)
    def writeSingleRegister(self, n):
        if self.comPortIsConnected():
            if self.regTableArrayRowsVisible <= n:
                Logger.getInstance().error("Request to write register " + str(n) + " is invalid")
            else:
                value = self.getEnteredRegisterValue(n)
                if value == None:
                    Logger.getInstance().error("Cannot interpret register " + str(n) + \
                        " value " + self.getEditfieldFromRegisterTable(n).text())
                else:
                    self.lastRW = 'write'
                    fVal = Floating(value, self.getSignFromRegisterTable(n).isChecked(), \
                        int(self.getIntEditfieldFromRegisterTable(n).text()))
                    self.getEditfieldFromRegisterTable(n).setText(str(fVal))
                    valData = fVal.getBinary()
                    data = struct.pack('>B', (n & 0x3f) | 0x40)
                    data = data + valData
                    data = data + struct.pack('>BH', (n & 0x3f), 0) 
                    # big-endian unsigned char + unsigned short (write) + unsigned char + unsigned short (0) (read request)
                    # first, third byte should be in format 0XAAAAAA, X=0 read X=1 write
                    Logger.getInstance().log("Writing register " + str(n) + " with value " + str(value))
                    self.sendRawDataCOM(data)
        
    @QtCore.pyqtSlot()
    def readSingleRegister(self, n):
        if self.comPortIsConnected():
            if self.regTableArrayRowsVisible <= n:
                Logger.getInstance().error("Request to read register " + str(n) + " is invalid")
            else:
                self.lastRW = 'read'
                data = struct.pack('>BH', (n & 0x3f), 0)
                # big endian address + zero in command parameter
                Logger.getInstance().log("Reading register " + str(n))
                self.sendRawDataCOM(data)

    #@QtCore.pyqtSlot(str)
    #def setStatus(self, status):
    #    self.regTableStatusLabel.setText("Status: " + str(status))
    #    Logger.getInstance().log("Status set to " + str(status))

    @QtCore.pyqtSlot(int, str)
    def setRegisterTableEditStatus(self, row, status):
        editfield = self.getEditfieldFromRegisterTable(row)
        if editfield:
            if status == "unknown":
                editfield.setStyleSheet("QLineEdit{background:silver}")
            elif status == "changed":
                editfield.setStyleSheet("QLineEdit{background:orange}")
            elif status == "match":
                editfield.setStyleSheet("QLineEdit{background:green}")
            elif status == "differ":
                editfield.setStyleSheet("QLineEdit{background:red}")
            else:
                pass

    def addRowToRegisterTable(self, row):
        label = QtGui.QLabel("0x%02x" % (row))
        label.setFixedWidth(30)
        self.regTableArray.addWidget(label, row*2, 0, 1, 1, Qt.AlignRight)

        caption = QtGui.QLineEdit()
        caption.setText("Register %d" % (row))
        self.regTableArray.addWidget(caption, row*2, 1, 1, 1)

        edit = QtGui.QLineEdit()
        edit.setText("0")
        edit.textChanged.connect(partial(self.setRegisterTableEditStatus, row, "changed"))
        edit.editingFinished.connect(partial(self.sliderMinMaxChanged, row))
        self.regTableArray.addWidget(edit, row*2, 2, 1, 1)

        sendbutton = QtGui.QPushButton("Send")
        readbutton = QtGui.QPushButton("Read")
        # bind parameter to method with partial
        sendbutton.clicked.connect(partial(self.writeSingleRegister, row))
        sendbutton.setMinimumWidth(40)
        readbutton.clicked.connect(partial(self.readSingleRegister, row))
        readbutton.setMinimumWidth(40)
        if not self.comPortIsConnected():
            sendbutton.setEnabled(False)
            readbutton.setEnabled(False)
        self.regTableArray.addWidget(sendbutton, row*2, 3, 1, 1)
        self.regTableArray.addWidget(readbutton, row*2, 4, 1, 1)

        check = QtGui.QCheckBox("Sign")
        check.setChecked(True)
        check.setStatusTip("Use sign bit, enabling negative numbers")
        intsize = QtGui.QLineEdit()
        intsize.setText("15")
        intsize.setValidator(QtGui.QIntValidator(0, 16))
        intsize.setFixedWidth(30)
        intlabel = QtGui.QLabel("SB")
        intlabel.setStatusTip("Number of bits of the significand, out of 16")
        self.regTableArray.addWidget(intlabel, row*2, 5, 1, 1)
        self.regTableArray.addWidget(intsize, row*2, 6, 1, 1)
        self.regTableArray.addWidget(check, row*2, 7, 1, 1)

        self.setRegisterTableEditStatus(row, "unknown")

        minField = QtGui.QLineEdit("-32768")
        minField.editingFinished.connect(partial(self.sliderMinMaxChanged, row))
        maxField = QtGui.QLineEdit("32767")
        maxField.editingFinished.connect(partial(self.sliderMinMaxChanged, row))
        slider = QtGui.QSlider(Qt.Horizontal)
        slider.setRange(0, self._SLIDERRANGE)
        slider.setValue(self._SLIDERRANGE/2)
        slider.setTracking(False)
        slider.sliderMoved.connect(partial(self.tableSliderChanged, row))

        self.regTableArray.addWidget(minField, 2*row+1, 0, 1, 1)
        self.regTableArray.addWidget(maxField, 2*row+1, 7, 1, 1)
        self.regTableArray.addWidget(slider, 2*row+1, 1, 1, 6)

        Logger.getInstance().log("Adding register row " + str(row))

    @QtCore.pyqtSlot(int, int)
    def tableSliderChanged(self, row, value):
        if not self.dontUpdateEditValueOnce:
            minVal = self.convertEditfieldToFloat(self.getSliderMinFromRegisterTable(row))
            maxVal = self.convertEditfieldToFloat(self.getSliderMaxFromRegisterTable(row))
            fVal = float(value)/self._SLIDERRANGE * (maxVal-minVal) + minVal
            Logger.getInstance().log("Slider in row %d changed to value %g" % (row, fVal))
            self.getEditfieldFromRegisterTable(row).setText(str(fVal))
        else:
            Logger.getInstance().log("Slider in row %d changed, but skipping" % (row))
            self.dontUpdateEditValueOnce = False;

    @QtCore.pyqtSlot(int)
    def sliderMinMaxChanged(self, row):
        self.dontUpdateEditValueOnce = True;
        minVal = self.convertEditfieldToFloat(self.getSliderMinFromRegisterTable(row))
        maxVal = self.convertEditfieldToFloat(self.getSliderMaxFromRegisterTable(row))
        editVal = self.convertEditfieldToFloat(self.getEditfieldFromRegisterTable(row))
        if editVal < minVal:
            editVal = minVal
            self.getEditfieldFromRegisterTable(row).setText(str(minVal))
        elif editVal > maxVal:
            editField = maxVal
            self.getEditfieldFromRegisterTable(row).setText(str(maxVal))

        sVal = int((editVal-minVal)/(maxVal-minVal) * self._SLIDERRANGE)
        Logger.getInstance().log("Slider numerical values changed, min = %g, max = %g, value = %g, slider = %g" % (minVal, maxVal, editVal, sVal))
        self.getSliderFromRegisterTable(row).setValue(sVal)

    def getLabelFromRegisterTable(self, n):
        return self.regTableArray.itemAtPosition(n*2,0).widget()

    def getCaptionFromRegisterTable(self, n):
        return self.regTableArray.itemAtPosition(n*2,1).widget()

    def getEditfieldFromRegisterTable(self, n):
        return self.regTableArray.itemAtPosition(n*2,2).widget()

    def getWriteButtonFromRegisterTable(self, n):
        return self.regTableArray.itemAtPosition(n*2,3).widget()

    def getReadButtonFromRegisterTable(self, n):
        return self.regTableArray.itemAtPosition(n*2,4).widget()

    def getIntLabelFromRegisterTable(self, n):
        return self.regTableArray.itemAtPosition(n*2,5).widget()

    def getIntEditfieldFromRegisterTable(self, n):
        return self.regTableArray.itemAtPosition(n*2,6).widget()

    def getSignFromRegisterTable(self, n):
        return self.regTableArray.itemAtPosition(n*2,7).widget()

    def getSliderMinFromRegisterTable(self, n):
        return self.regTableArray.itemAtPosition(n*2+1, 0).widget()

    def getSliderMaxFromRegisterTable(self, n):
        return self.regTableArray.itemAtPosition(n*2+1, 7).widget()

    def getSliderFromRegisterTable(self, n):
        return self.regTableArray.itemAtPosition(n*2+1, 1).widget()

    @staticmethod
    def convertEditfieldToFloat(text):
        if text == None:
            return None
        try:
            value = float(str(text.text().toAscii()))
        except:
            return None
        else:
            return value

    def getEnteredRegisterValue(self, n):
        textedit = self.getEditfieldFromRegisterTable(n)
        return self.convertEditfieldToFloat(textedit)

    @QtCore.pyqtSlot()
    def recreateRegisterTable(self):
        if self.regTableArrayRowsVisible == None:
            self.regTableArrayRowsVisible = 0
            existing = 0
        else:
            existing = self.regTableArray.rowCount()/2
        numreg = int(self.regTableRegistersLine.text())
        
        Logger.getInstance().log("Change register table to: " + str(numreg) + " current: " \
            + str(self.regTableArrayRowsVisible) + " existing " + str(existing))

        # hide additional registers
        while numreg < self.regTableArrayRowsVisible:
            self.getLabelFromRegisterTable(self.regTableArrayRowsVisible-1).hide()
            self.getCaptionFromRegisterTable(self.regTableArrayRowsVisible-1).hide()
            self.getEditfieldFromRegisterTable(self.regTableArrayRowsVisible-1).hide()
            self.getWriteButtonFromRegisterTable(self.regTableArrayRowsVisible-1).hide()
            self.getReadButtonFromRegisterTable(self.regTableArrayRowsVisible-1).hide()
            self.getIntLabelFromRegisterTable(self.regTableArrayRowsVisible-1).hide()
            self.getIntEditfieldFromRegisterTable(self.regTableArrayRowsVisible-1).hide()
            self.getSignFromRegisterTable(self.regTableArrayRowsVisible-1).hide()
            self.getSliderMinFromRegisterTable(self.regTableArrayRowsVisible-1).hide()
            self.getSliderMaxFromRegisterTable(self.regTableArrayRowsVisible-1).hide()
            self.getSliderFromRegisterTable(self.regTableArrayRowsVisible-1).hide()
            Logger.getInstance().log("Hiding register row " + str(self.regTableArrayRowsVisible))
            self.regTableArrayRowsVisible = self.regTableArrayRowsVisible - 1

        # show/create additional registers
        while self.regTableArrayRowsVisible < numreg:
            if (self.regTableArrayRowsVisible < existing):
                self.getLabelFromRegisterTable(self.regTableArrayRowsVisible).show()
                self.getCaptionFromRegisterTable(self.regTableArrayRowsVisible).show()
                self.getEditfieldFromRegisterTable(self.regTableArrayRowsVisible).show()
                self.getWriteButtonFromRegisterTable(self.regTableArrayRowsVisible).show()
                self.getReadButtonFromRegisterTable(self.regTableArrayRowsVisible).show()
                self.getIntLabelFromRegisterTable(self.regTableArrayRowsVisible).show()
                self.getIntEditfieldFromRegisterTable(self.regTableArrayRowsVisible).show()
                self.getSignFromRegisterTable(self.regTableArrayRowsVisible).show()
                self.getSliderMinFromRegisterTable(self.regTableArrayRowsVisible).show()
                self.getSliderMaxFromRegisterTable(self.regTableArrayRowsVisible).show()
                self.getSliderFromRegisterTable(self.regTableArrayRowsVisible).show()
                Logger.getInstance().log("Showing register row " + str(self.regTableArrayRowsVisible))
            else:
                self.addRowToRegisterTable(self.regTableArrayRowsVisible)
                existing = existing+1

            self.regTableArrayRowsVisible = self.regTableArrayRowsVisible + 1

    @QtCore.pyqtSlot(str)
    def comMessageArrived(self, message):
        if len(message) != (3 if not self.stubbing else 6):
            Logger.getInstance().error("Received message with incorrect length " + str(len(message)))
            return
        if self.stubbing:
            message = "".join([chr(int(message[2*i:2*i+2], 16)) for i in range(3)])
        encoded = self.dataToHexFormat(message)
        self.comHistoryTextField.appendPlainText("<-- " + encoded)
        Logger.getInstance().log("Received via UART: " + encoded)
        
        if (ord(message[0]) & 0xc0) == 0x00: # read command returned
            address = (ord(message[0]) & 0x3f)
            incomVal = Floating(message[1:3], self.getSignFromRegisterTable(address).isChecked(), \
                int(self.getIntEditfieldFromRegisterTable(address).text()))

            if self.lastRW == 'write':
                value = self.getEnteredRegisterValue(address)
                if value == None:
                    Logger.getInstance().error("Cannot interpret register " + str(address) + \
                        " value " + self.getEditfieldFromRegisterTable(address).text())
                else:
                    expectedValue = Floating(value, self.getSignFromRegisterTable(address).isChecked(), \
                            int(self.getIntEditfieldFromRegisterTable(address).text()))
                    self.setRegisterTableEditStatus(address, \
                        "match" if expectedValue.getFloating() == incomVal.getFloating() else "differ")
                    Logger.getInstance().log("Received read confirmation for address " +
                        "%02x value %s expected %s" % (address, str(incomVal), str(expectedValue)))
            else:
                editfield = self.getEditfieldFromRegisterTable(address)
                if editfield:
                    editfield.setText(str(incomVal))
                    self.setRegisterTableEditStatus(address, "match")
                    Logger.getInstance().log("Received read response for address %02x with value %s" % \
                        (address, str(incomVal)))
                else:
                    Logger.getInstance().error("Received read response for address %02x which does not exist" % (address))

    def updateGUIConnectChange(self, isConnected):
        self.comSpeedLine.setEnabled(not isConnected)
        self.comPortCombo.setEnabled(not isConnected)
        self.comConnectButton.setText("Disconnect" if isConnected else "Connect")
        self.comConnectAction.setText("Disconnect" if isConnected else "Connect")
        for i in xrange(self.regTableArrayRowsVisible):
            self.getWriteButtonFromRegisterTable(i).setEnabled(isConnected)
            self.getReadButtonFromRegisterTable(i).setEnabled(isConnected)

    @QtCore.pyqtSlot()
    def connectToCOMPort(self):
        Logger.getInstance().log("Connect button clicked, performing action")
        if self.comConnectButton.text() == "Connect":
            self.tryConnectToCOMPort()
        else:
            self.tryDisconnectFromCOMPort()

    def tryConnectToCOMPort(self):
        if self.comPortIsConnected():
            Logger.getInstance().warn("Requested to try to connect to COM port while existing connection is active")
            return
        comPort = str(self.comPortCombo.currentText())
        baudrate = str(self.comSpeedLine.text())
        try:
            if not self.stubbing:
                self.comConnectionThreadObject = COMSSClient(comPort, baudrate)
            else:
                self.comConnectionThreadObject = TCPSSClient(("127.0.0.1",12345))
        except Exception as e:
            Logger.getInstance().error("Cannot establish connection, error: " + str(e))
        else:
            self.comConnectionThread = myThread.makeThread(self.comConnectionThreadObject)
            self.comConnectionThreadObject.arrived.connect(lambda x: self.comMessageArrived(x.payload))
            myThread.startThread(self.comConnectionThreadObject)
            self.updateGUIConnectChange(True)
            if not self.stubbing:
                Logger.getInstance().log("Connection established on " + comPort + " @" + baudrate)
            else:
                Logger.getInstance().log("Connection established on 127.0.0.1 port 12345")

    def tryDisconnectFromCOMPort(self):
        if not self.comPortIsConnected():
            Logger.getInstance().warn("Requested to disconnect from COM port while there is no active connection")
            return
        self.comConnectionThread.quit()
        self.comConnectionThread.wait()
        del self.comConnectionThread
        del self.comConnectionThreadObject
        self.updateGUIConnectChange(False)
        Logger.getInstance().log("COM connection closed")         
            
    def comPortIsConnected(self):
        return self.comConnectButton.text() == "Disconnect"

    def createConnections(self):
        #QtGui.QShortcut(QtGui.QKeySequence("Ctrl+R"), self, self.comRefresh, None)
        self.comConnectButton.clicked.connect(self.connectToCOMPort)
        self.regTableRegistersLine.editingFinished.connect(self.recreateRegisterTable)

    def createMenus(self):
        fileMenu = self.menuBar().addMenu("&File")
        fileMenu.addAction(self.loadConfigAction)
        fileMenu.addAction(self.saveConfigAction)
        fileMenu.addSeparator()
        fileMenu.addAction(self.exitAction)
        connectionMenu = self.menuBar().addMenu("&Connection")
        connectionMenu.addAction(self.comConnectAction)
        connectionMenu.addAction(self.comRefreshAction)
        helpMenu = self.menuBar().addMenu("&Help")
        helpMenu.addAction(self.aboutAction)

    def createActions(self):
        self.exitAction = QtGui.QAction("E&xit", self, shortcut="Ctrl+Q",
                statusTip="Exit the application", triggered=self.close)
        self.aboutAction = QtGui.QAction("&About", self,
                statusTip="Show the application's About box",
                triggered=self.about)
        self.comConnectAction = QtGui.QAction("&Connect", self, shortcut="Ctrl+C",
                statusTip="Connect to port",
                triggered=self.connectToCOMPort)
        self.comRefreshAction = QtGui.QAction("&Refresh ports", self, shortcut="Ctrl+R",
                statusTip="Refresh system COM ports",
                triggered=self.comRefresh)
        self.saveConfigAction = QtGui.QAction("&Save configuration", self, shortcut="Ctrl+S",
                statusTip="Save current register settings to configuration file",
                triggered=self.saveConfig)
        self.loadConfigAction = QtGui.QAction("&Load configuration", self, shortcut="Ctrl+L",
                statusTip="Load register settings from configuration file",
                triggered=self.loadConfig)

    def setUpGUI(self):
        self.setWindowTitle('UART FPGA memory controller')
        self.setMinimumSize(500,300)
        #self.resize(250,400)

        ### MAIN WIDGET IS A SPLITTER BETWEEN COMMUNICATION PART AND REGISTER TABLE
        mainWidget = QtGui.QSplitter()
        mainWidget.setChildrenCollapsible(False)
        mainWidget.setOrientation(Qt.Vertical)
        mainWidget.setHandleWidth(1)
        self.setCentralWidget(mainWidget)

        # communication part
        communicationSplit = QtGui.QWidget()
        mainWidget.addWidget(communicationSplit)

        # register table part
        registerTableSplit = QtGui.QWidget()
        mainWidget.addWidget(registerTableSplit)

        # general settings to the widget
        mainWidget.setStretchFactor(0, 1)
        mainWidget.setStretchFactor(1, 2)




        ### POPULATE COMMUNICATION PART
        # create widgets for class
        self.comPortCombo = QtGui.QComboBox()
        self.comPortCombo.setStatusTip("To refresh use Connection menu")
        self.comSpeedLine = QtGui.QLineEdit()
        self.comSpeedLine.setText("115200")
        self.comSpeedLine.setValidator(QtGui.QIntValidator(1, 10000000))
        self.comSpeedLine.setStatusTip("COM baud rate")
        self.comConnectButton = QtGui.QPushButton("Connect")
        self.comConnectButton.setStatusTip("Connect to COM port")
        self.comHistoryTextField = QtGui.QPlainTextEdit()
        self.comHistoryTextField.setMinimumHeight(30)
        self.comHistoryTextField.setSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        self.comHistoryTextField.setReadOnly(True)
        self.comHistoryTextField.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.comHistoryTextField.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOn)
        self.comHistoryTextField.setMaximumBlockCount(500)

        # layout for controlls is a vertical box layout
        communicationSplitLayout = QtGui.QVBoxLayout()
        communicationSplitLayout.setMargin(7)
        communicationSplit.setLayout(communicationSplitLayout)

        # create grid layout for the controlls
        commLayout = QtGui.QGridLayout()
        commLayout.setSpacing(3)
        commLayout.setMargin(0)
        commLayout.setColumnStretch(0, 1)
        commLayout.setColumnStretch(1, 1)
        commLayout.setColumnStretch(2, 0)
        commLayout.addWidget(QtGui.QLabel("COM Port"), 0, 0, 1, 1)
        commLayout.addWidget(QtGui.QLabel("COM Speed"), 0, 1, 1, 1)
        commLayout.addWidget(self.comPortCombo, 1, 0, 1, 1)
        commLayout.addWidget(self.comSpeedLine, 1, 1, 1, 1)
        commLayout.addWidget(self.comConnectButton, 1, 2, 1, 1)

        # communication part consists of controlls, label and history field, vertically in box layout
        communicationSplitLayout.addLayout(commLayout)
        communicationSplitLayout.addWidget(QtGui.QLabel("UART communication log"))
        communicationSplitLayout.addWidget(self.comHistoryTextField)




        ### POPULATE REGISTERS TABLE
        # create widgets for class
        self.regTableRegistersLine = QtGui.QLineEdit()
        self.regTableRegistersLine.setText("4")
        self.regTableRegistersLine.setValidator(QtGui.QIntValidator(1,32))
        self.regTableRegistersLine.setFixedWidth(50)
        self.regTableRegistersLine.setStatusTip("Updates the array below")
        #self.regTableStatusLabel = QtGui.QLabel()
        #self.regTableStatusLabel.setAlignment(Qt.AlignRight | Qt.AlignVCenter)
        self.regTableArray = QtGui.QGridLayout()

        # create vertical box layout for controlls and register table
        registerTableSplitLayout = QtGui.QVBoxLayout()
        registerTableSplitLayout.setMargin(7)
        registerTableSplit.setLayout(registerTableSplitLayout)

        # create grid layout for controlls
        regLayout = QtGui.QGridLayout()
        regLayout.setSpacing(3)
        regLayout.setMargin(0)
        regLayout.setColumnStretch(0, 0)
        regLayout.setColumnStretch(1, 0)
        regLayout.setColumnStretch(2, 1)
        regLayout.addWidget(QtGui.QLabel("Number of registers:"), 0, 0, 1, 1)
        regLayout.addWidget(self.regTableRegistersLine, 0, 1, 1, 2)
        #regLayout.addWidget(self.regTableStatusLabel, 1, 2, 1, 1)

        # create scroll area, place dummy widget inside, and set grid layout to this widget
        regTableScrollArea = QtGui.QScrollArea()
        regTableScrollArea.setSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        regTableScrollArea.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        regTableScrollArea.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOn)
        regTableScrollArea.setWidgetResizable(True)
        regTableScrollWidget = QtGui.QWidget()
        regTableScrollArea.setWidget(regTableScrollWidget)
        regTableScrollWidget.setLayout(QtGui.QVBoxLayout())
        regTableScrollWidget.layout().addLayout(self.regTableArray)
        regTableScrollWidget.layout().addStretch(1)

        # place controlls and register widgets into main vertical box widget
        registerTableSplitLayout.addLayout(regLayout)
        registerTableSplitLayout.addWidget(regTableScrollArea)