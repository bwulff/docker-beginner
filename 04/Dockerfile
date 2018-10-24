ARG BASE_IMAGE=registry.gitlab.cc-asp.fraunhofer.de:4567/devops/runtime/jre8:latest
FROM ${BASE_IMAGE}

WORKDIR /build

RUN apt-get -y update && apt-get -y install maven && \
    mvn archetype:generate -DgroupId=de.fraunhofer.iais.demo -DartifactId=demo -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false && \
    cd demo && \
    mvn clean install && \
    ls -alh target


FROM tomcat:8.0
RUN pwd && ls -alh
COPY --from=0 /build/demo/target/demo.war webapps/
