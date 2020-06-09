#!/bin/bash

echo "########################################"
echo "######### Preparing to push  ###########"
echo "########################################"

REGISTRY="52.188.125.65:5043"
IMAGE="app"

echo "*** Without authentication ***"
echo "***      Tagging image     ***"
docker tag $IMAGE:$BUILD_TAG $REGISTRY/$IMAGE:$BUILD_TAG
echo "***      Pushing image     ***"
docker push $REGISTRY/$IMAGE:$BUILD_TAG

