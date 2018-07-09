FROM ubuntu:latest

RUN apt-get -y update && apt-get -y install tomcat8
COPY README.md /etc/
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh && mkdir -p /usr/share/tomcat8/conf &&  cp /etc/tomcat8/server.xml /usr/share/tomcat8/conf/server.xml


ENTRYPOINT /docker-entrypoint.sh
