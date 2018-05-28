FROM alpine

RUN apk add --no-cache postfix rsyslog

COPY ./start.sh /start.sh

EXPOSE 25/tcp

CMD ["sh", "-c", "/start.sh"]
