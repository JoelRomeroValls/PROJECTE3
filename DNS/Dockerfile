FROM ubuntu:latest

RUN apt-get update && \
	apt-get -y install bind9 dnsutils

COPY named.conf.local /etc/bind/named.conf.local
COPY db.H3rmes.com /etc/bind/db.H3rmes.com
 
#Utilizamos el 77 porque  53 ya esta siendo utilizado
EXPOSE 77/udp 77/tcp

CMD ["named", "-g"]

