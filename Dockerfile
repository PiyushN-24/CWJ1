FROM ubuntu

RUN apt-get update && \
    apt-get upgrade

WORKDIR /home/admin/

COPY target/CWJ1.war /home/admin/


