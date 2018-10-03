FROM ubuntu:bionic

USER root

RUN	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D6BC243565B2087BC3F897C9277A7293F59E4889 && \
	echo "deb http://miktex.org/download/ubuntu bionic universe" | sudo tee /etc/apt/sources.list.d/miktex.list && \
	apt-get update -q
	
RUN	apt-get install -qy miktex lyx

RUN	rm -rf /var/lib/apt/lists/*