# Reset Button

Follow the following steps to configure a Reset Button to the PLC.

For implementing the sleep functionality, configure any GPIO pin as an interrupt pin that detects falling edge.

The script that does this is reset.py. This will call the reset.sh script which will reset the PLC and reboot it.

Place both the files in /usr/local/bin and make them executable.

	sudo chmod +x /usr/local/bin reset.*

reset_service.sh is to start or stop the service. Place this file in /etc/init.d and make it executable

	sudo chmod +x /etc/init.d/reset_service.sh

Register script on boot.

	sudo update-rc.d reset_service.sh defaults

By default, the service will be running.

To stop, use

        sudo /etc/init.d/reset_service.sh stop

To start, use

        sudo /etc/init.d/reset_service.sh start

NOTE: Use the GPIO pin that is free for the button by looking at the hardware design. The pin can be easily changed by editing the python    
      code.
 
