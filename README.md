# Dockzoo

[![License](https://img.shields.io/github/license/Adron/systemic-dockzoo.svg?style=flat-square)](https://github.com/Adron/systemic-dockzoo/blob/master/LICENSE)
[![Maintenance](https://img.shields.io/maintenance/yes/2016.svg?style=flat-square)](#)
[![Issues](https://img.shields.io/github/issues/adron/systemic-dockzoo.svg?style=flat-square)](https://github.com/Adron/systemic-dockzoo/issues)
[![Docker Pulls](https://img.shields.io/docker/pulls/adron/systemic-dockzoo.svg?style=flat-square)](https://hub.docker.com/r/adron/systemic-dockzoo/)
[![ImageLayers Size](https://img.shields.io/imagelayers/image-size/_/adron/systemic-dockzoo.svg?style=flat-square)](https://hub.docker.com/r/adron/systemic-dockzoo/)
[![ImageLayers Layers](https://img.shields.io/imagelayers/layers/_/adron/systemic-dockzoo.svg?style=flat-square)](https://hub.docker.com/r/adron/systemic-dockzoo/)

The docker built images for Zookeeper tests &amp; builds.

Create the image from this repository with:

    docker build .

Otherwise pull the docker image itself from Docker Hub:

    docker pull adron/systemic-dockzoo

To create and start a container from this image 

    docker run -p 8181:8181 -p 2181:2181 -p 2888:2888 -p 3888:3888 adron/systemic-dockzoo

...or start with other services configured. This includes S3 bucket for backups, and the respective access key ID and secret access key. The hostname is the name of the associated host you might use with this particular cluster.

    docker run -p 8181:8181 -p 2181:2181 -p 2888:2888 -p 3888:3888 \
    -e S3_BUCKET=<bucket> \
    -e S3_PREFIX=<key_prefix> \
    -e AWS_ACCESS_KEY_ID=<access_key> \
    -e AWS_SECRET_ACCESS_KEY=<secret_key> \
    -e HOSTNAME=<host> \
    adron/systemic-dockzoo

*Author:* **Adron(-Orange)** @ **[Github](https://www.github.com/adron-orange)** or **[Twitter](https://twitter.com/adron_orange)**.
