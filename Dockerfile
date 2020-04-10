FROM ubuntu:18.04

ARG node_version
ARG terraform_version

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get clean

RUN echo "Node target version: ${node_version}"
RUN echo "Terraform target version: ${terraform_version}"
