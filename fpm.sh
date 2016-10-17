#!/bin/bash

CMD="docker run \
       --rm \
       --interactive \
       --tty \
       --name fpm \
       --net "none" \
       --user=$(id -u $(whoami)):$(id -g $(whoami)) \
       --volume $(pwd):/pwd \
       kurron/docker-fpm:1.6.3"

echo $CMD "$@"
$CMD "$@"
