#!/bin/bash

# Crea el archivo
echo app > /tmp/.envs
echo $BUILD_TAG >> /tmp/.envs
#echo $BUILD_PASS >> /tmp/.envs

# Transfiere el archivo
scp -i /opt/id_rsa /tmp/.envs ayraserver@52.188.125.65:/tmp/.envs
scp -i /opt/id_rsa ./jenkins/deploy/publish ayraserver@52.188.125.65:/tmp/publish
ssh -i /opt/id_rsa ayraserver@52.188.125.65 /tmp/publish
