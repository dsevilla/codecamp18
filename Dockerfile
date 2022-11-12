FROM jupyter/scipy-notebook

MAINTAINER dsevilla@um.es

EXPOSE 8888

USER root

RUN apt-get update \
    && apt-get install -y docker.io \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
    
