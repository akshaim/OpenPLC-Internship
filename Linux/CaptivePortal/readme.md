## Setting up Captive Portal

This readme  will describe in detail all the steps that needs to be followed in order to setup the Pi in headless mode and have a
a Captive Portal open up to give the user a provision to either configure the ethernet interface (eth0) or the wifi interface (wlan0).

## Prerequisites

The following packages are required: 

                     nginx

                     php5-fpm

                     hostapd

                     dnsmasq

Install them using the command

                   sudo apt-get install nginx php5-fpm hostapd dnsmasq

## Setting up Nginx with PHP

Follow the official Raspberry Pi [Documentation](https://www.raspberrypi.org/documentation/remote-access/web-server/nginx.md) for setting up
Nginx with PHP. 
