FROM ubuntu:16.04

MAINTAINER Ho Gia Bao <hogiabao2601@gmail.com>

RUN apt-get update && apt-get install -y \
  bzr \
  cvs \
  git \
  sudo \
  vim \
  build-essential \ 
  libreadline-dev \
  zlib1g-dev \
  gcc \
  net-tools \
  wget \
  openssl \
  libssl-dev \
  curl
  
RUN useradd -m ubuntu && echo 'ubuntu:ubuntu' | chpasswd && \
    echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER ubuntu

WORKDIR ~/

CMD ["/bin/bash"]


