# Overview
This project is a simple Docker image that runs the [FPM](https://github.com/jordansissel/fpm).
The container will allow you to create packages for the various Linux distributions without having to
worry about all the dependencies being properly installed.

# Prerequisites
* a working [Docker](http://docker.io) engine
* a working [Docker Compose](http://docker.io) installation

# Building
Type `docker-compose build` to build the image.  If you want a new version to be built on Docker Hub,
just snap a branch in GitHub and the branch name, eg `1.6.3` will be used as the Docker image tag.

# Installation
Docker will automatically install the newly built image into the cache.

# Tips and Tricks

## Verifying The Image
`docker-compose up` will launch the image, verifying the image. The Docker Compose file is 
configured to mount your current directory into the container.

## Launching The Image
Run `./fpm.sh` and it will launch the container with the default command line argument of `--version`.  You can
feed different arguments to script and execute arbitrary commands, eg. `./fpm.sh --help`.

## Full Example
Here is a Bash script that creates an RPM from a the contents of a the `tmp` directory in the working directory.

```
#!/bin/bash

CMD="docker run \
       --rm \
       --interactive \
       --tty \
       --name fpm \
       --network none \
       --user $(id -u $(whoami)):$(id -g $(whoami)) \
       --volume $(pwd):/pwd \
       kurron/docker-fpm:1.6.4 \
       --verbose \
       --license 'Apache 2.0' \
       --vendor 'E Corporation' \
       --category Fun \
       --architecture native \
       --maintainer '<kurr@kurron.org>' \
       --description 'This package is blah blah blah blah' \
       --rpm-summary 'Wicked Cool Mega Fun Server' \
       --rpm-os linux \
       --url http://kurron.org/  \
       --input-type dir \
       --output-type rpm \
       --name tlo \
       --iteration MILESTONE \
       --version 1.2.3 \
       tmp/"

echo eval $CMD
eval $CMD
rpm --query --package --info *.rpm
rpm --query --package --list *.rpm
```

# Troubleshooting

## RPM-Only
This container has only been tested with creating RPMs.  At some point, we'll probably add Debian support as well.

# License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

