#!/bin/bash

wget https://releases.hashicorp.com/packer/1.3.3/packer_1.3.3_linux_amd64.zip
unzip packer_1.3.3_linux_amd64.zip
rm -rf packer_1.3.3_linux_amd64.zip
./packer

