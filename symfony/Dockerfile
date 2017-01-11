FROM svero/php-mysql:5

MAINTAINER Sven Roeseler <s.roeseler@atenekom.eu>

# Adding a customized php.ini is recommended
COPY configs/php.ini /usr/local/etc/php/

# Copy the Symfony project
COPY HelloWorld/ /usr/src/HelloWorld/

# Copy the parameters file
COPY configs/parameters.yml /usr/src/HelloWorld/app/config/

# Set the working dir
WORKDIR /usr/src/HelloWorld

EXPOSE 8000

# Start the application
CMD [ "php", "app/console", "server:run", "0.0.0.0:8000" ]
