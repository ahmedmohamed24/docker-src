FROM php:7.4-fpm-alpine

ADD ./php/www.conf /usr/local/etc/php-fpm.d/www.conf

RUN addgroup -g 1000 ahmed && adduser -G ahmed -g ahmed -s /bin/sh -D ahmed

RUN mkdir -p /var/www/html

RUN chown ahmed:ahmed /var/www/html

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql
# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
