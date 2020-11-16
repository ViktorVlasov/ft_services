#!/bin/bash

kubectl delete deployments nginx-deployment
kubectl delete service nginx-svc

docker build -t nginx_image .
kubectl apply -f nginx.yaml