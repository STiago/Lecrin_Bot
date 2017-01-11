FROM ubuntu:14.04

#Autor
MAINTAINER Maria Victoria Santiago Alcala <victoriasantiagoalcala@gmail.com>

#Actualizar Sistema Base
RUN sudo apt-get -y update


# Instalar Python 
RUN sudo apt-get install -y python-setuptools
RUN sudo apt-get -y install python-dev
RUN sudo apt-get -y install build-essential
RUN sudo apt-get -y install python-psycopg2
RUN sudo apt-get -y install libpq-dev
RUN sudo easy_install pip
RUN sudo pip install --upgrade pip
RUN sudo apt-get -y install mongoDB
RUN sudo pip install pyTelegramBotAPI

