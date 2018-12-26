#!/bin/bash

echo "Welcome to DevOps Engineer class" | sed 's/class/team/'

echo "one
two
thre" > x.txt
sed '2d' x.txt
rm -rf x.txt