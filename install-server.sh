#!/bin/sh

#Add Percona dev key to apt.
sudo apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
#Add Percona repository to apt.
sudo echo "deb http://repo.percona.com/apt trusty main" >> /etc/apt/sources.list
sudo echo "deb-src http://repo.percona.com/apt trusty main" >> /etc/apt/sources.list

#Update apt-get cache and install basic LAMP stack
#as well as PHP5 Curl extension
#(required for third party social login options)
# and PHP5 GD extension (required for certain graphics operations)
sudo apt-get update
sudo apt-get install lamp-server^ php5-curl php5-gd
sudo service apache2 restart 
