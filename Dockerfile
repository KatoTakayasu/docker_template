FROM php:7.4-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-enable redis

COPY --from=composer:2.0.3 /usr/bin/composer /usr/bin/composer
