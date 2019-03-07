FROM node:11-slim

LABEL maintainer="mail@wieland.tech"

ENV REFRESHED_AT 2019-03-06
ENV AWSCLI 1.16.119

RUN apt-get -qq update
RUN apt-get -qq -y install ruby ruby-ffi git grunt python python-pip
RUN gem install compass --no-ri --no-rdoc
RUN pip install awscli==${AWSCLI}
WORKDIR /root
