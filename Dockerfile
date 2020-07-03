FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update -y && \
    apt install -y git python3-pip curl groff build-essential zip unzip && \
    apt clean && \
    apt autoclean && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip3 install numpy sympy --upgrade && \
    pip3 install --upgrade setuptools

RUN mkdir -p /code

WORKDIR /code