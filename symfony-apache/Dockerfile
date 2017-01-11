FROM php:5-apache

MAINTAINER Sven Roeseler <s.roeseler@atenekom.eu>

# Add pdo_mysql
RUN docker-php-source extract \
	&& docker-php-ext-install pdo_mysql \
	&& docker-php-source delete

# Adding a customized php.ini is recommended
COPY configs/php.ini /usr/local/etc/php/

# Copy the Symfony project
COPY HelloWorld/ /var/www/html/

# Copy the parameters file
COPY configs/parameters.yml /var/www/html/app/config/

# Set rights
RUN chown -R www-data:www-data /var/www/html
