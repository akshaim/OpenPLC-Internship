#!/bin/bash
#Shell script to start and stop the Power Button Service

case "$1" in
  start)                                      #'start' as argument
    /usr/local/bin/PowerButton.py &           #Start executing script in the background
    ;;
  stop)                                       #'stop' as argument
    pkill -f /usr/local/bin/PowerButton.py    #Stop execution of the script
    ;;
  *)                                          #Argument other than 'start' or 'stop'
    echo "Usage: /etc/init.d/Power.sh {start|stop}"        #Display the correct usage syntax to the user
    exit 1
    ;;
esac                       # End case

exit 0

