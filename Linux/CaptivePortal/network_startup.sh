#!/bin/bash
wlan_exist=$(ifconfig|grep -c "wlan0")
eth_exist=$(ifconfig|grep -c "eth0")
if [ $wlan_exist -eq 0 ] && [ $eth_exist -eq 1 ];then 
    sudo ifup eth0
    sudo ifdown eth0
    sudo ifup eth0
fi

