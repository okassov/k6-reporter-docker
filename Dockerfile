FROM ubuntu:latest

MAINTAINER "Okassov Marat"

ARG K6_VERSION="1.1.0"

RUN apt-get update \
 && apt-get install -y \
    wget \
    git \
 && wget -O /usr/bin/k6-reporter https://github.com/benc-uk/k6-reporter/releases/download/$K6_VERSION/k6-reporter \
 && apt-get -y remove wget

RUN chmod +x /usr/bin/k6-reporter
