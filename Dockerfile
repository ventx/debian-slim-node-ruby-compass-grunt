FROM node:11-slim

LABEL maintainer="mail@wieland.tech"

ENV REFRESHED_AT 2019-03-01

RUN apt-get -qq update
RUN apt-get -qq -y install ruby ruby-ffi git grunt
RUN gem install compass --no-ri --no-rdoc

WORKDIR /root

