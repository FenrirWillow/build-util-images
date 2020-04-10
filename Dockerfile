FROM ubuntu:18.04

ARG node-version
ARG terraform-version

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get clean

RUN echo "Node target version: ${node-version}}"
RUN echo "Terraform target version: ${terraform-version}"
