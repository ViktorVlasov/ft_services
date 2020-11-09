  
FROM alpine

RUN apk update && apk upgrade && \
	apk add openssl vsftpd && \
	echo 'root:root' | chpasswd

COPY ftps.crt			/etc/ssl/private/
COPY ftps.key			/etc/ssl/private/
COPY vsftpd.conf		/etc/vsftpd/vsftp_ftps.conf
COPY ./start_ftps.sh	/tmp/

RUN chmod +x /tmp/start_ftps.sh

EXPOSE 21
CMD ["/tmp/start_serv.sh"]

