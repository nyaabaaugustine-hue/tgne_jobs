FROM php:8.4-apache

# System dependencies
RUN apt-get update && apt-get install -y \
    git curl zip unzip \
    libpng-dev libjpeg-dev libfreetype6-dev \
    libonig-dev libxml2-dev libzip-dev \
    libsqlite3-dev libicu-dev \
 && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install \
    pdo_sqlite mbstring exif pcntl bcmath gd xml zip intl calendar \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Apache mods
RUN a2enmod rewrite headers

# Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# COPY EVERYTHING FIRST (Botble requirement)
COPY . .

# Force SQLite (no guessing, no .env dependency)
ENV DB_CONNECTION=sqlite
ENV DB_DATABASE=/var/www/html/database/database.sqlite
ENV APP_ENV=production
ENV APP_DEBUG=false

# Prepare folders & database
RUN mkdir -p database storage framework bootstrap/cache \
 && touch database/database.sqlite \
 && chown -R www-data:www-data /var/www/html \
 && chmod -R 775 storage bootstrap/cache database

# Install PHP deps AFTER platform exists
RUN composer install \
    --no-dev \
    --prefer-dist \
    --optimize-autoloader \
    --no-interaction

# Apache document root
RUN sed -i 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/public|g' \
    /etc/apache2/sites-available/000-default.conf

EXPOSE 80

# Entrypoint
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]