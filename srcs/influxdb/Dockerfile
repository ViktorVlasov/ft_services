FROM alpine

RUN apk add influxdb supervisor && \
	apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache && \
	mkdir -p /etc/telegraf && \
	/usr/bin/telegraf -sample-config --input-filter docker --output-filter influxdb > /etc/telegraf/telegraf.conf 

VOLUME /var/lib/influxdb

COPY srcs/start.sh /var/
COPY srcs/supervisord.conf /etc/

EXPOSE 8086

CMD sh /var/start.sh
#CMD ["/usr/bin/supervisord"]

#/usr/bin/telegraf -sample-config --input-filter docker --output-filter influxdb > /etc/telegraf/telegraf.conf 