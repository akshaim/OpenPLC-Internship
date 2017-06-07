#!/bin/bash
/var/www/html/replace.sh /etc/network/interfaces 23 '192.168.1.1' $1
/var/www/html/replace.sh /etc/network/interfaces 24 '255.255.255.0' $2
reboot

