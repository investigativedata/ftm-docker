FROM python:3-bullseye

RUN apt-get update && apt-get -y upgrade
RUN pip install -U pip setuptools
RUN pip install followthemoney nomenklatura pyicu
