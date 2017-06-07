#!/bin/bash
/var/www/html/replace.sh /etc/network/interfaces 13 '192.168.1.1' $1
/var/www/html/replace.sh /etc/network/interfaces 14 '255.255.255.0' $2
reboot

