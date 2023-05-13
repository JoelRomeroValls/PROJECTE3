FROM ubuntu:latest

RUN apt-get update && apt-get install -y postfix mailutils

COPY main.cf /etc/postfix/main.cf

RUN echo "h3rmes.com" > /etc/mailname

EXPOSE 25

CMD ["sh", "-c", "service postfix start && tail -f /dev/null"]


