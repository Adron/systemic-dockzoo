FROM ubuntu

RUN 	apt-get update && \
	apt-get upgrade -y && \
	apt-get install python-software-properties
	add-apt-repository ppa:webupd8team/java
	apt-get -y install curl
