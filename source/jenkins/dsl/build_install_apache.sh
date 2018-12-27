#!/bin/bash

#APACHE_VERSION=2.4.18
apacheVersion="$1"
echo "Building apache [ $apacheVersion ]... "

sudo rm -rf httpd*

sudo apt-get install -y libapr1-dev libaprutil1-dev

sudo wget http://www.carfab.com/apachesoftware//httpd/httpd-$apacheVersion.tar.gz
sudo tar xvf httpd-$apacheVersion.tar.gz
cd httpd-$apacheVersion
sudo ./configure
sudo make
sudo make install