FROM php:7.4-fpm-alpine

LABEL maintainer="Dark Jinnee <darkjinnee@gmail.com>"

RUN apk update && apk upgrade && apk add --no-cache \
    libjpeg-turbo-dev \
    oniguruma-dev \
    freetype-dev \
    libxml2-dev \
    libzip-dev \
    libpng-dev \
    supervisor \
    curl-dev \
    gettext \
    curl \
	bash

RUN docker-php-ext-install -j$(nproc) \
    pdo_mysql \
    tokenizer \
	ctype \
    iconv \
	json \
    curl \
	pdo \
	xml \
	zip \
	&& docker-php-ext-configure gd --with-freetype --with-jpeg \
	&& docker-php-ext-install -j$(nproc) gd \
	&& curl -sS https://getcomposer.org/installer -o composer-setup.php \
	&& php composer-setup.php --install-dir=/usr/local/bin --filename=composer

RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug-2.9.2 \
    && docker-php-ext-enable xdebug

RUN addgroup -g 1000 dev \
    && adduser -u 1000 -G dev -s /bin/sh -D dev
