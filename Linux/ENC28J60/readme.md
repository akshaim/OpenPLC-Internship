# ENC28J60 Ethernet Module Interfacing

Since Pi Zero does not have an Ethernet module, we have to interface an external one. ENC28J60 is an ethernet module that works on SPI
and works easily in Raspberry Pi with a plug and play feature. 

## Connection

              SO  - MISO
              SI  - MOSI
              CS  - CE0
              INT - GP25

Go through the pinout of RPi to find out the pins mentioned above.

## Interfacing

Making the module work is simple. 

Add the followin line to /boot/config.txt

	dtoverlay=enc28j60

Then when you reboot, the ethernet will work. This is because there is an overlay file already present in the system that defines how the
module should work with Raspberry Pi. Therefore, including that overlay file in config.txt did the job. 

## Problem 

The problem we now have is that the GPIO pin 25 is being used for something else in the hardware. Therefore, it is not possible to use it
with ENC28J60. The module works using interrupts and hence it is not possible to work with it without the interrupt pin also.

## Workaround

The solution is to edit the overlay file that defines how the module works with Pi. The overlay file is a C++ compiled binary file present in
/boot/dts/overlays directory. The file is a dtbo file. 

Make sure device-tree-compiler is present in the system. Mostly, it will be there. If not install it using 

	sudo apt install device-tree-compiler

We de-compile the enc28j60.dtbo file back to its source code, change the interrupt pin mapping and compile it back.

	sudo dtc -I dtb -O dts -o enc28j60.dts enc28j60.dtbo

The above command will de-compile the binary file to its source code. 

Now, in the source code look for the number 19 (Hexadecimal for 25) and replace it with the hexadecimal equivalent of the GPIO pin you want
to use as interrupt. 

Execute 

	sudo dtc -I dts -O dtb -o enc28j60.dtbo enc28j60.dts

This will convert the edited source code back to a binary file. 

Rebooting will effect the changes. 
