#!/bin/sh

minikube start --vm-driver=virtualbox

minikube addons enable metallb
kubectl apply -f srcs/metallb-config.yaml

eval $(minikube docker-env)

docker build -t nginx_image srcs/nginx/.
kubectl apply -f srcs/nginx/nginx.yaml

#docker build -t ftps_image srcs/ftps/.
#kubectl apply -f srcs/ftps/ftps.yaml

docker build -t mysql_image srcs/mysql/.
kubectl apply -f srcs/mysql/pv.yaml
kubectl apply -f srcs/mysql/mysql.yaml

docker build -t pma_image srcs/phpmyadmin/.
kubectl apply -f srcs/phpmyadmin/pma.yaml

docker build -t wordpress_image srcs/wordpress/.
kubectl apply -f srcs/wordpress/wordpress.yaml

minikube dashboard