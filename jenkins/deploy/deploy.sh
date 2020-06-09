#!/bin/bash

# Crea el archivo
echo app > /tmp/.envs
echo $BUILD_TAG >> /tmp/.envs
#echo $BUILD_PASS >> /tmp/.envs

# Transfiere el archivo
scp -i $HOME/.ssh/id_rsa /tmp/.envs ayraserver@52.188.125.65:/tmp/.envs
scp -i $HOME/.ssh/id_rsa ./jenkins/deploy/publish ayraserver@52.188.125.65:/tmp/publish
ssh -i $HOME/.ssh/id_rsa ayraserver@52.188.125.65 /tmp/publish
