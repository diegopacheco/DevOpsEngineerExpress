#!/bin/bash


cd /tmp
mkdir mydir
cd mydir
touch x.txt
echo "1234567" > x.txt
cat x.txt
ps aux | grep ps > x.txt
head x.txt
tail x.txt
ps aux | grep ps > x.txt
tail x.txt

