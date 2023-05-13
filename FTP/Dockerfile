FROM ubuntu:latest

RUN apt-get update && \
	apt-get -y install vsftpd

RUN echo "local_enable=YES" >> /etc/vsftpd.conf
RUN echo "write_enable=YES" >> /etc/vsftpd.conf
RUN echo "chroot_local_user=YES" >> /etc/vsftpd.conf

EXPOSE 20 21

CMD ["vsftpd", "/etc/vsftpd.conf"]

