#!/bin/bash

echo "*****************************"
echo "********MVN build .jar*********"
echo "*****************************"

#docker run --rm -v $HOME/docker-volumes/.m2:/root/.m2 -v $HOME/workspace-personal/jenkins/pipeline-project/java-app:/app -w /app maven:alpine "$@"
#docker run --rm -v $HOME/docker-volumes/.m2:/root/.m2 -v /var/jenkins_home/workspace/pipeline-docker-maven/java-app:/app -w /app maven:alpine "$@"
docker run --rm -v $HOME/docker-volumes/.m2:/root/.m2 -v /var/lib/jenkins/workspace/pipe-docker-maven-cicd/java-app:/app -w /app maven:alpine "$@"


