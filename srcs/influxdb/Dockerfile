FROM alpine

RUN apk update && apk upgrade
RUN	apk	add supervisor \
			wget

WORKDIR /grafana/bin/
EXPOSE 3000
CMD sh /var/init.sh