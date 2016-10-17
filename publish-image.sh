#!/bin/bash

# NOTE: Docker Hub is rigged up to automatically build all branches so you don't need to run this script.

if [ "$1" = "" ]
then
 echo "Usage: $0 tag"
 exit
fi

TAG=$1

TAG_COMMAND="docker tag fpm:compose kurron/fpm:$TAG"
echo $TAG_COMMAND
$TAG_COMMAND

PUSH_COMMAND="docker push kurron/fpm:$TAG"
echo $PUSH_COMMAND
$PUSH_COMMAND
