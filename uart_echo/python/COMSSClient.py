#!/usr/bin/env python

import serial
from Logger import Logger
from AbstractSSClient import AbstractSSClient
from PyQt4 import QtCore

class COMSSClient(AbstractSSClient):
    def __init__(self, port, baudrate, parent=None, msgLen=3):
        super(COMSSClient, self).__init__(parent, msgLen)

        # throwing instruction (throws IOError)
        self._socket = serial.Serial(port=port, baudrate=baudrate, 
            bytesize=serial.EIGHTBITS, stopbits=serial.STOPBITS_ONE, 
            parity=serial.PARITY_NONE, timeout=0.001, writeTimeout=0.001)
            
    def __del__(self):
        self.pause()
        try:
            self._socket.close()
        except AttributeError:
            pass

    def sendDataFunction(self, data):
        return self._socket.write(data)

    def receiveDataFunction(self, alreadyReceived):
        n = self._socket.inWaiting()
        text = alreadyReceived
        if n:
            text += self._socket.read(n)
        return text

    @QtCore.pyqtSlot()
    def loop(self):
        try:
            text = self._socket.read(1)
        except serial.SerialException as e:
            Logger.getInstance().error("Error in reading from COM port: " + str(e))
            return
        if text:
            self.receiveData(text)
        elif self.readyToSend():
            self.sendData()
        
        self.handleQueue()