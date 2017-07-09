# Power On/Off Button

When powered and shutdown, shorting the pin GPIO3 with GND will wake up the Pi. This is an inbuilt feature available in all models of
Raspberry Pi. Therefore, this is the wake up functionality.

For implementing the sleep functionality, configure any GPIO pin as an interrupt pin that detects falling edge.

The script that does this is PowerButton.py

This file should be placed in the directory /usr/local/bin and should be made executable using the following command

	sudo chmod +x /usr/local/bin/PowerDown.py

We should have a provision to start and stop this service. This is done by the script Power.sh. This should be placed in the
directory /etc/init.d and should be made executable using the following command

	sudo chmod +x /etc/init.d/Power.sh

This script should be registered to run on boot. Execute

	sudo update-rc.d Power.sh defaults

By default, the service will be running.

To stop, use 
  
	sudo /etc/init.d/Power.sh stop

To start, use 
 
	sudo /etc/init.d/Power.sh start
