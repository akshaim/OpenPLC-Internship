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

## Configure Pi in Headless Mode

### Setup Static IP

Copy the content of interfaces_default to /etc/network/interfaces file.

	sudo cp interfaces_default /etc/network/interfaces

Also place the interfaces_default file in the interfaces directory.

	sudo cp interfaces_default /etc/network/

This file is used to set up a static IP address to the Pi.

Copy the content of wpa_supplicant_default.conf to /etc/wpa_supplicant/wpa_supplicant.conf and place the file in the directory.

	sudo cp wpa_supplicant_default.conf /etc/wpa_supplicant/wpa_supplicant.conf

	sudo cp wpa_supplicant_default.conf /etc/wpa_supplicant/

Edit the /etc/hosts and add the following line

	192.168.1.1 OpenPLC.localnet

### Configure hostapd

Hostapd is software that allows the Raspberry Pi to accept wireless connections from clients. We need to build its configuration file for our
network.

	sudo nano /etc/hostapd/hostapd.conf

Edit it such that it looks like this:

	interface=wlan0

	ssid=OpenPLC

	hw_mode=g

	channel=6

	auth_algs=1

	wmm_enabled=0

Now we need to tell the system where to find hostapd’s configuration file.

	sudo nano /etc/default/hostapd

Uncomment the line #DAEMON_CONF="" and make it look like this 

	DAEMON_CONF="/etc/hostapd/hostapd.conf"

