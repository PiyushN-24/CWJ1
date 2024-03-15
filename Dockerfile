FROM ubuntu

RUN apt-get update && \
    apt-get upgrade

WORKDIR /home/admin/

COPY target/CWJ1.war /home/admin/apache-tomcat-9.0.86/webapps


