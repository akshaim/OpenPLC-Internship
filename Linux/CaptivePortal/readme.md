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

The default files are used during reset operation.

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

### Configure dnsmasq

Dnsmasq is a software that assigns IP addresses to devices when they connect to the network.

Take a backup copy of the default configuration file

	sudo mv /etc/dnsmasq.conf /etc/dnsmasq_orig.conf

And write your own file

	sudo nano /etc/dnsmasq.conf

And edit it such that it looks like the following: 

	# Never forward addresses in the non-routed address spaces.

	bogus-priv

	#　Add other name servers here, with domain specs if they are for　non-public domains.

	server=/localnet/192.168.1.1

	# Add local-only domains here, queries in these domains are answered　from /etc/hosts or DHCP only.

	local=/localnet/

	# Make all host names resolve to the Raspberry Pi's IP address

	address=/#/192.168.1.1

	# Specify the interface that will listen for DHCP and DNS requests

	interface=wlan0
	
	# Set the domain for dnsmasq

	domain=localnet

	# Specify the range of IP addresses the DHCP server will lease out to devices, and the duration of the lease

	dhcp-range=192.168.1.10,192.168.1.254,1h

	# Specify the default route

	dhcp-option=3,192.168.1.1

	# Specify the DNS server address

	dhcp-option=6,192.168.1.1

	# Set the DHCP server to authoritative mode.

	dhcp-authoritative

Reboot the pi to see the Pi acting in headless mode. 
