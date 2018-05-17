FROM php:apache
RUN apt-get install pkg-config \
    && pecl install mongodb \
    && docker-php-ext-enable mongodb
COPY config/php.ini /usr/local/etc/php/
