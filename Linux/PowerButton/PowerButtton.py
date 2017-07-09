#!/usr/bin/env python
# This is a python script to give sleep functionality to the Power Button in an RPi

#Import Necessary Libraries
import RPi.GPIO as GPIO                 #Library for GPIO
import subprocess                       #Library to execute shell command

power_pin=3                             #Power Pin

GPIO.setmode(GPIO.BCM)                                         #Setting the GPIO pins in BCM mode
GPIO.setup(power_pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)       #Configure GPIO pin 3 as input pin - PULLED UP
GPIO.wait_for_edge(power_pin, GPIO.FALLING)                    #This command stops program execution till it senses a falling edge in pin 3

subprocess.call(['shutdown', '-h', 'now'], shell=False)   #Executes command 'shutdown -h now' and shuts down the raspberry pi

