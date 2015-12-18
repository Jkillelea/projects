#!/bin/python

import ../arduino-serial-master/arduinoserial.py


serialPort = '/dev/ttyACM0' #user set serial port, default current

s = serial.Serial(port=serialPort, baudrate=9600)

