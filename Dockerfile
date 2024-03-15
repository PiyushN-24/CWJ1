FROM ubuntu

RUN apt-get update 

WORKDIR /home/

COPY target/CWJ1.war /home/


