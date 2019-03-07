FROM php:7.1.26-fpm-alpine3.8
LABEL Maintainer="小方老师<tech@ahaschool.com>" Description="ahaschool nginx php"

# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

# Install packages, autoconf g++ make 
RUN apk add libmcrypt-dev librdkafka-dev nginx
RUN docker-php-ext-install bcmath pdo_mysql mcrypt

COPY docker-php-helper /usr/local/bin/

RUN docker-php-helper init

RUN docker-php-ext-enable igbinary redis rdkafka

# RUN apk del libmcrypt-dev librdkafka-dev
RUN rm -rf /var/cache/apk/

# Create webroot directories
RUN mkdir -p /var/www/html
WORKDIR /var/www/html

EXPOSE 8082
