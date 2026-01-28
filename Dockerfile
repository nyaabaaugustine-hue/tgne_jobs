FROM php:8.2-apache

RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html
COPY . .

RUN chmod -R 775 storage bootstrap/cache || true

EXPOSE 80

CMD ["apache2-foreground"]