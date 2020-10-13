FROM alpine

RUN apk update && apk upgrade
RUN apk add nginx \
            supervisor \
            php7 php7-fpm php7-opcache php7-json php7-iconv php7-mbstring php7-gettext \
		    php7-gd php7-mysqli php7-zlib php7-curl php7-session php7-phar \
		    wget

EXPOSE 5000
CMD sh /var/init.sh