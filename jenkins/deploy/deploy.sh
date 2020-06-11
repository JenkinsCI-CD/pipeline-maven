#!/bin/bash

# Crea el archivo
echo app > /tmp/.envs
echo $BUILD_TAG >> /tmp/.envs
#echo $BUILD_PASS >> /tmp/.envs

# Transfiere el archivo
scp /tmp/.envs ayraserver@52.188.125.65:/tmp/.envs
scp ./jenkins/deploy/publish ayraserver@52.188.125.65:/tmp/publish
ssh ayraserver@52.188.125.65 /tmp/publish
