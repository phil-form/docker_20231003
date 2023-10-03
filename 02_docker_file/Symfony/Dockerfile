FROM webdevops/php-dev:7.4 AS build

COPY . /app

WORKDIR /app
RUN cd /app

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install vim wget git zip htop -y && \
    wget https://get.symfony.com/cli/installer -O - | bash

RUN mv ~/.symfony5/bin/symfony /usr/local/bin/symfony

