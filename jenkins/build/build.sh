#!/bin/bash

cp -f java-app/target/*.jar jenkins/build/

echo "########################"
echo "#### Creating image ####"
echo "########################"

cd jenkins/build/
apk add docker-compose -y
docker-compose -f docker-compose-build.yml build --no-cache
