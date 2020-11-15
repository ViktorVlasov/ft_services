FROM alpine

RUN apk update && apk upgrade
RUN apk add mariadb mariadb-client openrc

VOLUME /var/lib/mysql

COPY srcs/create_db.sql /var/
COPY srcs/start.sh      /var/start.sh
COPY srcs/my.cnf        /etc/mysql/

RUN chmod 744	/etc/mysql/my.cnf

EXPOSE 3306
CMD sh /var/start.sh
