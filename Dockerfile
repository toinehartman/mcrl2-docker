FROM ubuntu:focal

RUN apt-get update \
    && apt-get install --no-install-recommends -y software-properties-common \
    && add-apt-repository ppa:mcrl2/release-ppa \
    && apt-get install --no-install-recommends -y mcrl2 \
    && rm -rf /var/lib/apt/lists/*
