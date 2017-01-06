FROM php:5

MAINTAINER Sven Roeseler <s.roeseler@atenekom.eu>

# Add pdo_mysql
RUN docker-php-source extract \
	&& docker-php-ext-install pdo_mysql \
	&& docker-php-source delete
