FROM php:7.0-apache

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    git curl nano

RUN docker-php-ext-install pdo_mysql

RUN curl -sS https://getcomposer.org/installer \
    | php -- --install-dir=/usr/local/bin --filename=composer
