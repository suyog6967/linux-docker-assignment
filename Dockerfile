FROM ubuntu:latest

LABEL maintainer="student@example.com"
LABEL description="A basic container for Linux command operations"

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    nano \
    git \
    iputils-ping \
    net-tools \
    htop \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["/bin/bash"]