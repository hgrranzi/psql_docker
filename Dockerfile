FROM debian:buster

COPY srcs/settings.sh /

COPY srcs/start.sh /

RUN sh settings.sh && rm settings.sh

COPY srcs/flyway.conf /flyway-7.8.2/conf

COPY srcs/init.sql /

CMD bash start.sh
