#!/usr/bin/env python

import socket
import select
from Logger import Logger
from AbstractSSClient import AbstractSSClient
from PyQt4 import QtCore

class TCPSSClient(AbstractSSClient):
    def __init__(self, address, parent=None, msgLen=6):
        super(TCPSSClient, self).__init__(parent, msgLen)
        
        # throwing instruction (throws IOError)
        self._socket = socket.create_connection(address, 5.0)
        self._socket.setblocking(0)
    
    def __del__(self):
        self.pause()
        try:
            self._socket.close()
        except AttributeError:
            pass

    def sendDataFunction(self, data):
        return self._socket.send(data)

    def receiveDataFunction(self, alreadyReceived=""):
        try:
            data = self._socket.recv(1024)
        except Exception as e:
            Logger.getInstance().error("TCP error while receiving: " + str(e))
            return ""
        else:
            if data[-1] == '\n':
                data = data[0:-1]
            return data

    @QtCore.pyqtSlot()
    def loop(self):
        try:
            readable, _, exceptional = select.select([self._socket], [], [self._socket], 0.0001) # very short time, 0.1ms to provide the smallest possible delays in network synchronization
        except Exception as e:
            Logger.getInstance().error("TCP connection select exception " + str(e))
        else:
            if exceptional:
                Logger.getInstance().error("Error in TCP communication")
            elif readable:
                self.receiveData()
            elif self.readyToSend():
                self.sendData()

        self.handleQueue()