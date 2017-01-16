FROM php:7.0-fpm

MAINTAINER Murray Crane <murray.crane@gmail.com>

RUN docker-php-ext-install -j$(nproc) mysqli

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && apt-get -y install nullmailer && echo php-fpm.docker.local > /etc/mailname

RUN echo sendmail_path=/usr/sbin/sendmail -t -i > /usr/local/etc/php/php.ini
