FROM php:8.4-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git curl zip unzip \
    libpng-dev libjpeg-dev libfreetype6-dev \
    libonig-dev libxml2-dev libzip-dev \
    libsqlite3-dev libicu-dev libpq-dev \
&& docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install \
    pdo_mysql pdo_sqlite pdo_pgsql mbstring exif pcntl bcmath gd xml zip intl calendar \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Enable Apache modules
RUN a2dismod mpm_event mpm_worker || true \
 && a2enmod mpm_prefork rewrite headers expires deflate filter proxy proxy_http \
 && a2enmod rewrite \
 && a2dissite default-ssl || true

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# Copy application files
COPY . .

# Create necessary directories and set permissions
RUN mkdir -p \
    storage/framework/cache \
    storage/framework/sessions \
    storage/framework/views \
    storage/logs \
    bootstrap/cache \
    database \
 && touch database/database.sqlite \
 && chown -R www-data:www-data /var/www/html \
 && chmod -R 775 storage bootstrap/cache database

# Install PHP dependencies
RUN composer install \
    --no-dev \
    --prefer-dist \
    --optimize-autoloader \
    --no-interaction

# Set up Apache document root and allow .htaccess overrides
RUN sed -i 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/public|g' \
    /etc/apache2/sites-available/000-default.conf
RUN sed -i 's/AllowOverride None/AllowOverride All/g' \
    /etc/apache2/apache2.conf
RUN echo 'LoadModule rewrite_module /usr/lib/apache2/modules/mod_rewrite.so' > /etc/apache2/mods-enabled/rewrite.load

# Configure Apache to listen on Render's port
ENV PORT 10000
RUN sed -i "s/Listen 80/Listen ${PORT}/g" /etc/apache2/ports.conf
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN sed -i "s/:80>/:${PORT}>/g" /etc/apache2/sites-available/000-default.conf

# Copy and enable the entrypoint script
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

# Healthcheck
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s \
    CMD curl -f http://localhost/ || exit 1