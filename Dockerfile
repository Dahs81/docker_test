FROM dockerfile/nodejs
MAINTAINER Shad Beard

RUN apt-get update
RUN apt-get -qq install build-essential

ADD test.txt /data/