FROM python:3-slim

RUN apt-get update &&\
	apt-get install -y gcc &&\
	pip install errbot

WORKDIR /opt

ADD errbot-data/ .

CMD errbot