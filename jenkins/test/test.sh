#!/bin/bash

echo "####################################"
echo "############# Testing ##############"
echo "####################################"


docker run --rm -v $HOME/docker-volumes/.m2:/root/.m2 -v $HOME/workspace-personal/jenkins/pipeline-project/java-app:/app -w /app maven:alpine "$@"
