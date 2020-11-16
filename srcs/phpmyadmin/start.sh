#!/bin/bash

kubectl delete deployments pma-deployment
kubectl delete service pma-svc

docker build -t pma_image .
kubectl apply -f pma.yaml