FROM alpine

RUN apk update
RUN apk add sudo \
            nginx \
            openssh openssl \
            supervisor

EXPOSE 80 443
CMD sh var/init.sh