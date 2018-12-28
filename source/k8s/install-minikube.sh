#!/bin/bash

curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.32.0/minikube-linux-amd64 && \ 
chmod +x minikube && sudo cp minikube /usr/local/bin/ && rm minikube

minikube start

