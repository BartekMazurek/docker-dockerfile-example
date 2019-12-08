# Dockerfile - PHP 7.2 server + MySql
FROM ubuntu:latest
MAINTAINER Bartłomiej Mazurek (bartlomiejmazurek9@gmail.com)

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y apache2 vim nano php7.2 php7.2-cli php7.2-mysql mysql-server

EXPOSE 80
EXPOSE 3306
