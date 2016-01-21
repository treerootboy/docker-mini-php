FROM alpine:latest

MAINTAINER LM <treerootboy@gmail.com>

RUN apk update
RUN apk add php php-fpm php-mcrypt php-gd php-memcache php-mysql php-openssl php-opcache php-xml php-soap php-pdo

COPY php-fpm.conf /etc/php-fpm.conf

RUN adduser -u8080 -D -H www

CMD php-fpm -F -y /etc/php-fpm.conf
