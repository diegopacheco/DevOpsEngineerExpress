#!/bin/bash

kubectl run hello-minikube --image=k8s.gcr.io/echoserver:1.10 --port=8080 deployment.apps/hello-minikube
kubectl expose deployment hello-minikube --type=NodePort service/hello-minikube

kubectl get pod
curl $(minikube service hello-minikube --url)

