  
FROM alpine

RUN apk update && apk upgrade
RUN apk add nginx \
		supervisor \
		php7 php7-fpm php7-opcache php7-json \
		php7-gd php7-mysqli php7-zlib php7-curl \
		wget

EXPOSE 5050
CMD sh /var/init.sh