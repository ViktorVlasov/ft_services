FROM alpine

RUN apk update
RUN apk add sudo \
            nginx \
            openssh openssl \
            supervisor

#copy file

COPY ./serv.conf /etc/nginx/conf.d/default.conf

#ssl
RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/certs/localhost.key \
		-x509 -days 90 -subj "/C=RU/ST=Moscow/L=Moscow/O=21school/OU=21/CN=efumiko" \
		-out /etc/ssl/certs/localhost.crt


COPY ./start_serv.sh /tmp/
RUN chmod +x /tmp/start_serv.sh
RUN mkdir -p /run/nginx
EXPOSE 80 443
CMD ["/tmp/start_serv.sh"]