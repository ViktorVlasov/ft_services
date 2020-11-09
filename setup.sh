#!/bin/sh

minikube start --vm-driver=virtualbox

minikube addons enable metallb
kubectl apply -f srcs/metallb-config.yaml

eval $(minikube docker-env)

docker build -t nginx_image srcs/nginx/.
kubectl apply -f srcs/nginx.yaml

docker build -t ftps_image srcs/ftps/.
kubectl apply -f srcs/ftps.yaml