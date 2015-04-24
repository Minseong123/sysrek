#!/usr/bin/env python

from PyQt4 import QtCore, QtGui
from PyQt4.QtCore import Qt

from MainWindow import MainWindow
   
if __name__ == '__main__':
    import sys
    
    app = QtGui.QApplication(sys.argv)
    app.setStyleSheet('QSplitter::handle {background-color: gray}')
    #window = MainWindow(True) # for TCP
    window = MainWindow(False)
    app.setActiveWindow(window)
    
    window.show()
    
    retval = app.exec_()
    sys.exit(retval)
