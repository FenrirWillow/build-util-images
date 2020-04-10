FROM ubuntu:18.04

ARG node-version
ARG terraform-version

RUN apt-get update
RUN apt-get install build-essential
RUN apt-get clean

RUN echo "Terraform version: ${node-version}}"
RUN echo "Terraform version: ${terraform-version}"
