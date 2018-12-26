#!/bin/bash 

function quit {
    echo "bye bye"
    exit 0
}  

function hello {
    echo "Hello $1" 
}  

hello world
quit
echo "THIS DONT PRINT!"

