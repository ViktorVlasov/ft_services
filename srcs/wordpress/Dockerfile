  
FROM alpine

RUN apk update && apk upgrade
RUN apk add nginx \
		supervisor \
		php7 php7-fpm php7-opcache php7-json \
		php7-gd php7-mysqli php7-zlib php7-curl \
		wget

RUN mkdir -p /run/nginx /run/php \
	&& rm -f /etc/nginx/conf.d/default.conf

RUN wget https://wordpress.org/latest.tar.gz && \
    tar -xvzf latest.tar.gz && \
    mv wordpress /var/www/wordpress && \
    rm -rf /var/www/latest.tar.gz /var/www/phpMyAdmin-5.0.2-all-languages.tar.gz && \
	chmod 777 /var/www/*

COPY nginx.conf		/etc/nginx/conf.d/
COPY wp-config.php		/var/www/wordpress/

EXPOSE 5050
CMD sh /var/init.sh