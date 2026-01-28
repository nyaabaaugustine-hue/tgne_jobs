FROM php:8.4-apache

RUN apt-get update && apt-get install -y \
    git curl zip unzip \
    libpng-dev libjpeg-dev libfreetype6-dev \
    libonig-dev libxml2-dev libzip-dev \
    libsqlite3-dev libicu-dev \
 && docker-php-ext-configure gd --with-freetype --with-jpeg \
 && docker-php-ext-install \
    pdo_mysql pdo_sqlite mbstring exif pcntl bcmath gd xml zip intl calendar \
 && a2enmod rewrite headers \
 && rm -rf /var/lib/apt/lists/*

RUN a2dismod mpm_event mpm_worker \
 && a2enmod mpm_prefork

WORKDIR /var/www/html

COPY . .

RUN mkdir -p storage/framework/cache \
    storage/framework/sessions \
    storage/framework/views \
    storage/logs \
    bootstrap/cache \
 && chown -R www-data:www-data /var/www/html \
 && chmod -R 775 storage bootstrap/cache

RUN composer install --no-dev --optimize-autoloader --no-interaction

EXPOSE 80

CMD ["apache2-foreground"]