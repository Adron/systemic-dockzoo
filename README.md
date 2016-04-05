#Dockzoo

[![Container Logo](https://github.com/Adron/systemic-dockzoo/blob/master/Logo.png?raw=true)]()

[![License](https://img.shields.io/github/license/adron-orange/systemic-dockzoo.svg?style=flat-square)](https://github.com/adron-orange/systemic-dockzoo/blob/master/LICENSE)
[![Maintenance](https://img.shields.io/maintenance/yes/2016.svg?style=flat-square)](#)
[![Docker Pulls](https://img.shields.io/docker/pulls/adron-orange/systemic-dockzoo.svg?style=flat-square)](https://hub.docker.com/r/adronorange/dockzoo/)
[![ImageLayers Size](https://img.shields.io/imagelayers/image-size/_/adron-orange/systemic-dockzoo.svg?style=flat-square)](https://hub.docker.com/r/adronorange/dockzoo/)
[![ImageLayers Layers](https://img.shields.io/imagelayers/layers/_/adron-orange/systemic-dockzoo.svg?style=flat-square)](https://hub.docker.com/r/adronorange/dockzoo/)

The docker built images for Zookeeper tests &amp; builds.

Create the image from this repository with:

    docker build .

Otherwise pull the docker image itself from Docker Hub:

    docker pull adron/dockzoo

To create and start a container from this image 

    docker run -p 8181:8181 -p 2181:2181 -p 2888:2888 -p 3888:3888 adron/systemic-dockzoo

...or start with other services configured. This includes S3 bucket for backups, and the respective access key ID and secret access key. The hostname is the name of the associated host you might use with this particular cluster.

    docker run -p 8181:8181 -p 2181:2181 -p 2888:2888 -p 3888:3888 \
    -e BUCKET=<bucket> \
    -e PREFIX=<key_prefix> \
    -e ACCESS_KEY_ID=<access_key> \
    -e SECRET_ACCESS_KEY=<secret_key> \
    -e HOSTNAME=<host> \
    adron/systemic-dockzoo

## Verification of Services & User Interface

To verify that exhibitor has started and is available, navigate to:

    http://<hostname>:8181

For more information on Exhibitor check out the API https://github.com/Netflix/exhibitor/wiki/REST-Introduction.

To check that Zookeeper is a keepin'.

    echo ruok | nc <hostname> 2181

*Author(s):* [![Adron Hall](https://github.com/Adron/systemic-dockzoo/blob/master/AdronHall.png?raw=true)](http://compositecode.com) @ **[Github](https://www.github.com/adron)** or **[Twitter](https://twitter.com/adron)**.
