FROM alpine

RUN apk update && apk upgrade
RUN apk add mariadb mariadb-client openrc

VOLUME ["/var/lib/mysql"]
VOLUME ["/sys/fs/cgroup"]

COPY srcs/my.cnf /etc/mysql
COPY srcs/create_db.sql /etc/
COPY srcs/start.sh /tmp/start.sh

RUN chmod +x /tmp/start.sh
EXPOSE 3306
CMD sh /tmp/start.sh