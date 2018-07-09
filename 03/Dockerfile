FROM ubuntu:latest

RUN apt-get -y update && apt-get -y install tomcat8
COPY README.md /etc/
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh


ENTRYPOINT /docker-entrypoint.sh
