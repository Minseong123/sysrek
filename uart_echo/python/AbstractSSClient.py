#!/usr/bin/env python

from Logger import Logger
from datetime import datetime
import Queue

from PyQt4 import QtCore

import myThread

class MarkedMessage(object):
    def __init__(self, payload, timestamp=None):
        self.payload = payload
        self.timestamp = timestamp

class AbstractSSClient(myThread.myThread):
    arrived = QtCore.pyqtSignal(MarkedMessage)

    def __init__(self, parent=None, msgLen=3):
        super(AbstractSSClient, self).__init__(parent)
       
        self._outgoing = Queue.Queue()
        self._outbuffer = ''
        self._inbuffer = ''
        self._msgLen = msgLen
        
    def receiveData(self, alreadyReceived=""):
        timestamp = self.getTimestamp()
        data = self.receiveDataFunction(alreadyReceived)
        self._inbuffer += data
        while len(self._inbuffer) >= self._msgLen:
            self.arrived.emit(MarkedMessage(self._inbuffer[0:self._msgLen], timestamp))
            self._inbuffer = self._inbuffer[self._msgLen:]

    def sendDataFunction(self, data):
        raise NotImplementedError()

    def receiveDataFunction(self, alreadyReceived=""):
        raise NotImplementedError()

    def sendData(self):
        try:
            send = self.sendDataFunction(self._outbuffer)
        except Exception as e:
            Logger.getInstance().error("Error in sending, error: " + str(e))
            self.__del__()
        else:
            self._outbuffer = self._outbuffer[send:]

    def handleQueue(self):
        if not self._outgoing.empty():
            self._outbuffer += self._outgoing.get()

    def getTimestamp(self):
        return datetime.now()

    def readyToSend(self):
        return len(self._outbuffer) > 0

    @QtCore.pyqtSlot()
    def loop(self):
        raise NotImplementedError()
            
    @QtCore.pyqtSlot(str)
    def send(self, message):
        self._outgoing.put(message)
