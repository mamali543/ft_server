FROM debian:buster

RUN apt update
RUN apt upgrade -y

COPY srcs/* /

RUN bash installations.sh
RUN bash nginx.sh
RUN bash mysql.sh
RUN bash php.sh
RUN bash phpmyadmin.sh


ENTRYPOINT [ "sh", "script.sh" ]
#RUN service nginx restart
#RUN service mysql restart
#RUN bash wordpress.sh
#ENTRYPOINT ./srcs/startnginx.sh