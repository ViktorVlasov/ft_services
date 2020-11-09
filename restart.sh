#!/bin/bash


kubectl delete deploy nginx-deployment
kubectl delete svc nginx-svc
docker build -t nginx_image srcs/nginx/.
kubectl apply -f srcs/nginx.yaml