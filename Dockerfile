FROM python:3-bookworm

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y python3-icu
RUN pip install -U pip setuptools
RUN pip install followthemoney followthemoney-store nomenklatura pyicu ftmq
