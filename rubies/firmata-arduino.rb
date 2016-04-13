#!/usr/bin/env ruby
require "arduino_firmata" # allows programs to talk directly to arduino

LED_PIN = 13;

# connect to board
arduino = ArduinoFirmata.connect

puts "board version: #{arduino.version}"

arduino.pin_mode(12, ArduinoFirmata::INPUT)

puts arduino.digital_read 12


# arduino.pin_mode(LED_PIN, ArduinoFirmata::OUTPUT)
#
# 0.upto(255) do |n|
#   arduino.analog_write LED_PIN, n
#   sleep 0.01
# end

# once we're done, close the port
arduino.close
