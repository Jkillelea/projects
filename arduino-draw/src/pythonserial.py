#!/bin/python

import serial

#load from image
IMGHEIGHT = 
IMGWIDTH =

#create data structure that will cold coordinates of lines to be drawn, and possibly misc instructions?

#This section will get values from a grayscale image and create lines in an easy to manipulate way so
#that coordinates can be made from them for driving stepper motors via arduino.
#The goal is to allow said ardino to manipulate a gondola holding a pen in such a manner that it can
#reproduce the lineart in physical form on a wall.
#The details of this section are as of yet unkown.


serialPort = '/dev/ttyACM0' #user set serial port, default current

s = serial.Serial(port=serialPort, baudrate=9600)

