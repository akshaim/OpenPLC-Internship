#!/usr/bin/env python
# This is a python script to give sleep functionality to the Power Button in an RPi

#Import Necessary Libraries
import RPi.GPIO as GPIO              #Library for GPIO
import subprocess                    #Library to execute shell command

reset_pin=4                          #Reset pin

GPIO.setmode(GPIO.BCM)                                      #Setting the GPIO pins in BCM mode
GPIO.setup(reset_pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)    #Configure GPIO pin 3 as input pin - PULLED UP
GPIO.wait_for_edge(reset_pin, GPIO.FALLING)                 #This command stops program execution till it senses a falling edge in pin 4

subprocess.call(['/usr/local/bin/reset.sh'], shell=False)   #Executed the script reset.sh

