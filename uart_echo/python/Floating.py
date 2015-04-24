#!/usr/bin/env python

import struct

class Floating:
    def __init__(self, value, sign=True, sigBits=15):
        self.sign = sign
        self.sigBits = sigBits

        if self.sigBits > 16:
            self.sigBits = 16
        if self.sign and self.sigBits == 16:
            self.sigBits = 15
        
        self.expBits = 16 - self.sigBits - (1 if self.sign else 0)

        if type(value) is str:
            if self.sign:
                h = struct.unpack('>h', value)[0]
            else:
                h = struct.unpack('>H', value)[0]
            value = float(h) / 2**self.expBits

        value = float(value)
        mul = value* 2**(self.expBits)
        integers = int(round(mul))
        maxBits = self.sigBits+self.expBits

        if self.sign:
            if integers > 2**maxBits - 1:
                integers = 2**maxBits - 1
            elif integers < -1*(2**maxBits):
                integers = -1*(2**maxBits)
        else:
            if integers < 0:
                integers = 0
            elif integers > 2**maxBits:
                integers = 2**maxBits

        self.integers = integers

    def getFloating(self):
        return float(self.integers) / 2**self.expBits

    def getBinary(self):
        if self.sign:
            data = struct.pack('>h', self.integers)
        else:
            data = struct.pack('>H', self.integers)
        
        return data

    def __str__(self):
        return str(self.getFloating())
