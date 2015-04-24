#!/usr/bin/env python

import itertools
import serial, os, re
from serial.tools import list_ports

from Logger import Logger

class COMMngr():
    _WINDOWSREGISTRY = 'HARDWARE\\DEVICEMAP\\SERIALCOMM'

    def __init__(self):
        pass
    
    @staticmethod
    def getAllPorts():
        #pass
        ports = []
        if os.name == 'nt': # windows
            import _winreg as winreg

            try:
                key = winreg.OpenKey(winreg.HKEY_LOCAL_MACHINE, COMMngr._WINDOWSREGISTRY)
            except WindowsError as e:
                Logger.getInstance().warn("Serial ports scanner: Cannot open Windows registry key: " + str(e))
            else:
                for i in itertools.count():
                    try:
                        val = winreg.EnumValue(key, i)
                        m = re.match('^COM(\d+)$', str(val[1]))
                        if m:
                            ports.append("COM"+m.group(1))
                    except EnvironmentError:
                        break
        else: # unix
            for port in list_ports.comports():
                ports.append(port[0])
        return sorted(ports)