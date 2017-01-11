FROM php:7

MAINTAINER Sven Roeseler <s.roeseler@atenekom.eu>

RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y vim

COPY configs/vimrc /root/.vimrc

CMD [ "/bin/bash" ]
