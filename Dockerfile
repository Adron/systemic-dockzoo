FROM debian:7.8
MAINTAINER Adron Hall adronhall@gmail.com

ENV \
    ZK_RELEASE="http://www.apache.org/dist/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz"

RUN \
    apt-get update && \
    apt-get install -y default-jdk && \
    cd /opt/ && \
    mkdir zookeeper && \
    cd zookeeper && \
    wget http://mirror.tcpdiag.net/apache/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz && \
    tar -xvzf zookeeper-3.4.8.tar.gz