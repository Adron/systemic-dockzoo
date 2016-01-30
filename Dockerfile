FROM ubuntu

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y openjdk-7-jdk && \
	apt-get -y install curl
