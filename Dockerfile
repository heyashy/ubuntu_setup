# Use the official Ubuntu 22.04 base image
FROM ubuntu:22.04

# Set the working directory inside the container
WORKDIR /app

# add software-properties-common and ansible
RUN apt-get update && \
    apt-get -y install sudo

# install snap store
RUN apt-get install -y snapd

# add docker user 
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

# install ansible
RUN apt-get install -y software-properties-common \
    && apt-add-repository --yes --update ppa:ansible/ansible \
    && apt-get install -y ansible

# copy ./app to /app
COPY ./app /app

RUN chown -R docker:docker /app
USER docker
ENV RUNTIME=docker


