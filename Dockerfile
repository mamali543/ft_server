FROM debian:buster

RUN apt update
RUN apt upgrade -y

COPY srcs/* /

RUN bash installations.sh
RUN bash nginx.sh
RUN bash mysql.sh
RUN bash php.sh
RUN bash phpmyadmin.sh
RUN bash wordpress.sh

CMD bash /script.sh && bash