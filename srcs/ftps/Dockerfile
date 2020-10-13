  
FROM alpine

RUN apk update && apk upgrade
RUN apk add openssl \
			vsftpd

EXPOSE 21
CMD sh /var/init.sh