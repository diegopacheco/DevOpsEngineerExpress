#!/bin/bash

sudo apt-get install wget -y
wget https://archive.apache.org/dist/httpd/binaries/linux/httpd-2.0.52-s390-ibm-linux.tar.gz
tar -xzvf httpd-2.0.52-s390-ibm-linux.tar.gz
rm -rf httpd-2.0.52-s390-ibm-linux.tar.gz
