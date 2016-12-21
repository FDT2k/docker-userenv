FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

ADD run.sh /app/run.sh
ADD app.sh /app/app.sh

RUN chmod ugo+x /app/*

ENTRYPOINT ["/app/run.sh"]
