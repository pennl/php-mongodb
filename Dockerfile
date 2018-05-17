FROM php:apache
Run pecl install mongodb \
    && docker-php-ext-enable mongodb
COPY config/php.ini /usr/local/etc/php/
