 #!/bin/sh

openrc default
/etc/init.d/mariadb setup
rc-service mariadb start

mysql -u root < /etc/setup_request.sql
#mysql wordpress -u root < /var/wordpress.sql

rc-service mariadb stop

/usr/bin/mysqld_safe