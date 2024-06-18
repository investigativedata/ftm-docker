FROM python:3.11-bookworm

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y pkg-config libicu-dev
RUN apt-get install -y libleveldb-dev

RUN apt-get autoremove -y && apt-get clean

RUN pip install -q -U pip setuptools
RUN pip install -q --no-binary=:pyicu: pyicu

RUN pip install -q followthemoney followthemoney-store ftmq
