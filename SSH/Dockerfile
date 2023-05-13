FROM ubuntu:latest

RUN apt-get update && \
	apt-get -y install openssh-server

RUN mkdir /var/run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

