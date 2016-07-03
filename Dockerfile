FROM docker:latest
MAINTAINER Tobias Kuendig <tobias@offline.swiss>

RUN apk add --no-cache git php5 php5-dom php5-json php5-phar php5-openssl openssh-client \
  && rm -rf /var/cache/apk/*
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer
