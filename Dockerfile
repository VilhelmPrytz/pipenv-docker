FROM python:latest

LABEL maintainer="vilhelm@prytznet.se"

RUN set -x \
	&& apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y pipenv \
	&& apt-get clean autoclean \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/*
