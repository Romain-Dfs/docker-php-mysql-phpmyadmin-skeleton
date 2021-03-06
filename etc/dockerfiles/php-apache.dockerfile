FROM php:8.0-apache

ENV COMPOSER_ALLOW_SUPERUSER=1

EXPOSE 80
WORKDIR /app

# mysql pdo
RUN docker-php-ext-install mysqli pdo_mysql pdo && docker-php-ext-enable mysqli

# git, unzip & zip are for composer
RUN apt-get update -qq && \
    apt-get install -qy \
    git \
    gnupg \
    unzip \
    curl \
    zip && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Apache
COPY etc/apache/vhost.conf /etc/apache2/sites-available/000-default.conf
COPY etc/apache/apache.conf /etc/apache2/conf-available/z-app.conf

RUN a2enmod rewrite remoteip && \
    a2enconf z-app

#RUN groupadd -g 1001 docker
#RUN useradd -u 1001 -g docker docker

#USER docker

