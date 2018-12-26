#!/bin/bash

sa="Bash"
sb="Code"

if [ $sa = $sb ]; then
	echo "Both Strings are equal"
else 
	echo "Strings are NOT equal"
fi 

if [ $sa = $sa ]; then
	echo "Both Strings are equal"
else 
	echo "Strings are NOT equal"
fi 

