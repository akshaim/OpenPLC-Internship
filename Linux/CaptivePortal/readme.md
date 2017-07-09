# Headless Mode and Captive Portal

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

## Captive Portal

Nginx is the server that we are using to host the Captive Portal. 

The default file present in the location /etc/nginx/sites-available/ is the configuration file that tells nginx where the files for the sites
are available (root directory) and how to handle client requests. On opening the file, it can be seen that /var/www/html/ is the root
directory for keeping the site files.

So, copy all the files present in the folder SiteFiles to the root directory. 

	sudo cp SiteFiles/* /var/www/html

The line below the root /var/www/html/ in the default configuration file contains the list of default files that the nginx will execute. Here
replace the default file nginx-debian.html with homepage.html to open that page.

Add the following lines to the file for the captive portal:

	# Redirects requests for /generate_204 to open the captive portal screen                

	     location /generate_204 {                                                                                         

	            return 302  http://OpenPLC.localnet/homepage.html                                                

	     }        

Find the following lines in the file

	location / {

	                # First attempt to serve request as file, then

	                # as directory, then fall back to displaying a 404.

	                try_files $uri $uri/ =404;

	        }

And replace them with the following lines

	# Redirect requests for files that don't exist to the OpenPLC page

        location / {

                try_files $uri $uri/ /homepage.html;

        }

The Captive Portal is used to configure the interfaces. This is done by a PHP script at the backend and this is basically done by rewriting
certain files namely /etc/network/interfaces and /etc/wpa_supplicant/wpa_supplicant.conf files and by rebooting the Pi.

Nginx runs its server with its default group and user 'www-data'. Therefore the user and the group ownership of these files as well as the
SiteFiles should be changed to www-data.

	sudo chown -R www-data:www-data /var/www/html

	sudo chown www-data:www-data /etc/network/interfaces

	sudo chown www-data:www-data /etc/wpa_supplicant/wpa_supplicant.conf

Rewriting of files is done by the Linux Utility SED (Stream EDitor). What sed does is, it creates a new copy of the file, edits it and
replaces it with the existing file. Therefore we need to provide permissions for the directories containing these files as well. This is
again done by chown command.

	sudo chown www-data:www-data /etc/network

	sudo chown www-data:www-data /etc/wpa_supplicant

Now, provide appropriate limited read, write and execute permissions to these files using the chmod command. 

	sudo chmod 755 pathToFile

Execute 

	sudo chmod u+s /sbin/reboot

so that all users can run the reboot command without password. 

Reboot the Pi and we will have a Captive Portal that can be used to configure interfaces. 

The captive portal allows us to do one of the three things:

1. Connect to an existing wifi network through wlan0 interface.

2. Change the static ip of the wlan0 interface.

3. Change the static ip of the eth0 interface.

Finally, place the script network_startup.sh script anywhere and add the following line to the /etc/rc.local file before the last line

	/path/to/your/file/network_startup.sh || exit 1

Make sure the script is executable. 

This script configures the static ip to the eth0 interface if wlan0 is not present and does nothing in any of the other two cases.
Adding it to the rc.local file will run the file on boot. 

