FROM ubuntu:18.04

ARG node_version
ARG terraform_version

RUN apt-get update
RUN apt-get install -y build-essential curl unzip git python3-pip
RUN apt-get clean

RUN echo "Node target version: ${node_version}"
RUN echo "Terraform target version: ${terraform_version}"

# Install NodeJS from nodesource
RUN curl -L https://deb.nodesource.com/setup_${node_version}.x | bash -
RUN apt-get install -y nodejs
RUN node --version

# Install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install yarn
RUN yarn --version

# Install Terraform from the hashicorp releases
RUN curl -O  https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip
RUN unzip terraform_${terraform_version}_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN terraform -version

# Install AWS CLI version 1
RUN pip3 install --upgrade awscli==1.14.5
RUN aws --version
