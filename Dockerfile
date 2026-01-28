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

# Make .env available
# If .env exists locally, copy it
# COPY .env .env
# Otherwise fallback to example
# RUN cp .env.example .env 2>/dev/null || true

# Force SQLite (no guessing, no .env dependency)
ENV DB_CONNECTION=sqlite
ENV DB_DATABASE=/var/www/html/database/database.sqlite
ENV APP_ENV=production
ENV APP_DEBUG=false
ENV APP_URL=http://localhost
ENV APP_NAME=JobBox
ENV APP_KEY=base64:Omp5ltYMzn9+LpxAj63fE2Hd8qP2svGrGKf0/er+0IQ=
ENV APP_CIPHER=AES-256-CBC
ENV APP_LOCALE=en
ENV APP_FALLBACK_LOCALE=en
ENV APP_FAKER_LOCALE=en_US
ENV ADMIN_DIR=admin
ENV CMS_DISABLE_VERIFICATION=true
ENV CMS_DISABLE_UPDATE_CHECK=true
ENV CMS_DISABLE_WARNING_MESSAGES=true
ENV CMS_ENABLE_INSTALLER=false
ENV QUEUE_CONNECTION=sync
ENV CACHE_STORE=file
ENV SESSION_DRIVER=file
ENV BROADCAST_DRIVER=log
ENV LOG_CHANNEL=stderr
ENV LOG_LEVEL=error
ENV FILESYSTEM_DISK=local
ENV VIEW_COMPILED_PATH=/var/www/html/storage/framework/views
ENV CACHE_DRIVER=file
ENV SESSION_DRIVER=file
ENV QUEUE_CONNECTION=sync

# Prepare folders & database
RUN mkdir -p database storage framework bootstrap/cache storage/framework/views \
 && touch database/database.sqlite \
 && chown -R www-data:www-data /var/www/html \
 && chmod -R 775 storage bootstrap/cache database

# Install PHP deps AFTER platform exists
RUN composer install \
    --no-dev \
    --prefer-dist \
    --optimize-autoloader \
    --no-interaction

# Cache configs after env is present
RUN php artisan config:cache
RUN php artisan route:cache
RUN php artisan view:cache

# Apache document root
RUN sed -i 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/public|g' \
    /etc/apache2/sites-available/000-default.conf

EXPOSE 80

# Entrypoint
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]

# Optional: healthcheck override
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s \
 CMD curl -f http://localhost/ || exit 1
