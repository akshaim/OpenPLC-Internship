#!/bin/bash
/var/www/html/replace.sh /etc/network/interfaces 19 'static' 'manual'
/var/www/html/replace.sh /etc/network/interfaces 20 '#' ' '
/var/www/html/replace.sh /etc/network/interfaces 21 'address 192.168.1.1' ' '
/var/www/html/replace.sh /etc/network/interfaces 22 'netmask 255.255.255.0' ' '
/var/www/html/replace.sh /etc/network/interfaces 23 'network 192.168.1.0' ' '
/var/www/html/replace.sh /etc/wpa_supplicant/wpa_supplicant.conf 4 '#' ' '
/var/www/html/replace.sh /etc/wpa_supplicant/wpa_supplicant.conf 5 '#' ' '
/var/www/html/replace.sh /etc/wpa_supplicant/wpa_supplicant.conf 6 '#' ' ' 
/var/www/html/replace.sh /etc/wpa_supplicant/wpa_supplicant.conf 7 '#' ' '
/var/www/html/replace.sh /etc/wpa_supplicant/wpa_supplicant.conf 5 'default' $1
/var/www/html/replace.sh /etc/wpa_supplicant/wpa_supplicant.conf 6 'default' $2
sudo reboot

