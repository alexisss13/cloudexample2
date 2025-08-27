# determinamos que estamos trabajando con una imagen de php

FROM php:8.1-apache

# instalamos las dependencias necesarias para trabajar con postgreSQL
RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_pgsql

# copiamos el codigo de la aplicacion al contenedor
COPY . /var/www/html/

# Exponer el puerto 80
EXPOSE 80
CMD [ "apache2-foreground" ]