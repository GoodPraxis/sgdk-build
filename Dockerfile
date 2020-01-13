FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y git build-essential texinfo curl wget unzip openjdk-8-jdk
RUN git clone https://github.com/kubilus1/gendev.git && cd gendev && make && make install
ENV GENDEV="/opt/gendev"
