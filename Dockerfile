FROM ubuntu:18.04

RUN apt-get update && apt upgrade -y
RUN apt install build-essential -y
RUN apt install wget libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev -y
RUN wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
RUN tar -xzvf Python-3.7.0.tgz
RUN apt-get install zlibc zlib1g zlib1g-dev -y

WORKDIR Python-3.7.0
RUN ./configure --enable-optimizations
RUN make
RUN make install

WORKDIR ~
