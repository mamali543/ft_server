FROM debian:buster

Run apt update

COPY srcs/* /

RUN bash installations.sh
RUN bash nginx.sh
RUN bash php.sh
RUN bash php_outils.sh
RUN bash mysql.sh
