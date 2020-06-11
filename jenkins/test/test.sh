#!/bin/bash

echo "####################################"
echo "############# Testing ##############"
echo "####################################"


#docker run --rm -v $HOME/docker-volumes/.m2:/root/.m2 -v /home/ayra/workspace-personal/projects-jenkins/Maven-docker-cicd/java-app:/app -w /app maven:alpine "$@"
docker run --rm -v $HOME/docker-volumes/.m2:/root/.m2 -v /var/lib/jenkins/workspace/pipe-docker-maven-cicd/java-app:/app -w /app maven:alpine "$@"
