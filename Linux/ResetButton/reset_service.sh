#!/bin/bash
#Shell script to start and stop the Reset Button Service

### BEGIN INIT INFO
# Provides:              reset.py
# Required-Start:        $remote_fs $syslog
# Required-Stop:         #remote_fs $syslog
# Default-Start:         2 3 4 5
# Default-Stop:          0 1 6
### END INIT INFO

case "$1" in
     start)                                    #'start' as argument
         /usr/local/bin/reset.py &             #Start executing script in the background
         ;;
     stop)                                     #'stop' as argument
         pkill -f /usr/local/bin/reset.py      #Stop execution of the script
         ;;
     *)                                        #Argument other than 'start' or 'stop'
         echo "Usage: /etc/init.d/reset_service.sh {start|stop}"  #Display the correct usage syntax to the user
         exit 1
         ;;
esac               #End case

exit 0






