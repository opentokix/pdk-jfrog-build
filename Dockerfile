FROM debian:buster-slim

ENV PDK_DISABLE_ANALYTICS=true \
    PUPPET_DEVELOPMENT_KIT_VERSION=1.18.1
RUN apt-get update && apt-get -y upgrade 
RUN apt-get install -y curl git
RUN curl -O https://apt.puppetlabs.com/puppet6-release-buster.deb
RUN dpkg -i puppet6-release-buster.deb 
RUN rm puppet6-release-buster.deb
RUN apt-get update && apt-get -y install pdk 
RUN curl -fL https://getcli.jfrog.io | sh
RUN mkdir /module 
WORKDIR /module 
