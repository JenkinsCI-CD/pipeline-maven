#!/bin/bash

echo "*****************************"
echo "********MVN build .jar*********"
echo "*****************************"

#docker run --rm -v $HOME/docker-volumes/.m2:/root/.m2 -v $HOME/workspace-personal/jenkins/pipeline-project/java-app:/app -w /app maven:alpine "$@"
docker run --rm -v $HOME/docker-volumes/.m2:/root/.m2 -v /var/lib/docker/volumes/jenkins-data/_data/workspace/pipeline-maven-docker/java-app:/app -w /app maven:alpine "$@"
