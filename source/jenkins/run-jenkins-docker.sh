#!/bin/bash

echo "GOTO: http://localhost:8282/jenkins"

docker stop jenkins; docker rm jenkins;

docker run --name jenkins -p 8282:8080 -p 50000:50000 -v /var/jenkins/ jenkins/jenkins

