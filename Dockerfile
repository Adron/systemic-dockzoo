FROM ubuntu

RUN 	apt-get update && \
	apt-get upgrade -y && \
	apt-get -y install python-software-properties && \
	apt-get -y install software-properties-common && \
	add-apt-repository ppa:webupd8team/java && \
	apt-get -y install oracle-java8-installer && \
	apt-get -y install curl
