#!/bin/bash

# if this does not work on Windows (bug), try same inside container (docker exec)
docker run -d --name tomcat8 -p 10000:8080 tomcat:8.0
docker run -d --name tomcat9 -p 10001:8080 tomcat:9.0

curl http://localhost:10000 | grep "Tomcat/"
curl http://localhost:10001 | grep "Tomcat/"

docker rm -f tomcat8
docker rm -f tomcat9

# override a standard entrypoint
docker run -it --entrypoint=/bin/bash tomcat:8.0
