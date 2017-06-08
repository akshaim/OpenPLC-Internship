#!/bin/bash
#Shell script to start and stop the Power Button Service

case "$1" in                                          
  start)                                             #'start' as argument
    echo "Starting ListenForShutdown.py"             
    /usr/local/bin/ListenForShutdown.py &           #Start executing script in the background
    ;;
  stop)                                             #'stop' as argument
    echo "Stopping ListenForShutdown.py"
    pkill -f /usr/local/bin/ListenForShutdown.py    #Stop execution of the script
    ;;
  *)                                                #Argument other than 'start' or 'stop'
    echo "Usage: /etc/init.d/ListenForShutdown.sh {start|stop}"        #Display the correct usage syntax to the user
    exit 1
    ;;
esac                       # End case

exit 0

