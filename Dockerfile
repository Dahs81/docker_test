FROM google/golang
MAINTAINER Shad Beard

ENV CORE_HOST localhost
RUN apt-get update
RUN apt-get -qq install build-essential

WORKDIR /go/src/github.com/Dahs81/SQ

RUN go get
RUN echo "$CORE_HOST"

ENTRYPOINT ["/go/bin/SQ"]
