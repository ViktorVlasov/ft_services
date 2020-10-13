FROM alpine

RUN apk update && apk upgrade
RUN apk add mariadb mariadb-client openrc

VOLUME /var/lib/mysql

EXPOSE 3306
CMD sh /var/init.sh