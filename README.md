#Dockzoo

[![Container Logo](./Logo.png)]()

[![License](https://img.shields.io/github/license/Adron/systemic-dockzoo.svg?style=flat-square)](https://github.com/Adron/systemic-dockzoo/blob/master/LICENSE)
[![Maintenance](https://img.shields.io/maintenance/yes/2016.svg?style=flat-square)](#)
[![Issues](https://img.shields.io/github/issues/adron/systemic-dockzoo.svg?style=flat-square)](https://github.com/Adron/systemic-dockzoo/issues)
[![Docker Pulls](https://img.shields.io/docker/pulls/adron/systemic-dockzoo.svg?style=flat-square)](https://hub.docker.com/r/adron/dockzoo/)
[![ImageLayers Size](https://img.shields.io/imagelayers/image-size/_/adron/systemic-dockzoo.svg?style=flat-square)](https://hub.docker.com/r/adron/dockzoo/)
[![ImageLayers Layers](https://img.shields.io/imagelayers/layers/_/adron/systemic-dockzoo.svg?style=flat-square)](https://hub.docker.com/r/adron/dockzoo/)

The docker built images for Zookeeper tests &amp; builds.

Create the image from this repository with:

    docker build .

Otherwise pull the docker image itself from Docker Hub:

    docker pull adron/systemic-dockzoo

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

*Author(s):* [![Adron Hall](./AdronHall.png)](http://compositecode.com) @ **[Github](https://www.github.com/adron)** or **[Twitter](https://twitter.com/adron)**.
