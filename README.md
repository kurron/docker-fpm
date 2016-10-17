# Overview
This project is a simple Docker image that runs the [FPM](https://github.com/jordansissel/fpm).
The container will allow you to create packages for the various Linux distributions without having to
worry about all the dependencies being properly installed.

# Prerequisites
* a working [Docker](http://docker.io) engine
* a working [Docker Compose](http://docker.io) installation

# Building
Type `docker-compose build` to build the image.

# Installation
Docker will automatically install the newly built image into the cache.

# Tips and Tricks

## Verifying The Image
`docker-compose up` will launch the image, verifying the image. The Docker Compose file is 
configured to mount your home directory into the container.  

## Launching The Image
Run `./fpm.sh` and it will launch the container with the default command line argument of `--version`.  You can
feed different arguments to script and execute arbitrary commands, eg. `./fpm.sh configure`.

# Troubleshooting

# License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

