FROM php:8.4-apache

# System dependencies
RUN apt-get update && apt-get install -y \
    git curl zip unzip \
    libpng-dev libjpeg-dev libfreetype6-dev \
    libonig-dev libxml2-dev libzip-dev \
    libsqlite3-dev libicu-dev \
 && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install \
    pdo_mysql pdo_sqlite mbstring exif pcntl bcmath gd xml zip intl calendar \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Apache mods
RUN a2dismod mpm_event mpm_worker || true \
 && a2enmod mpm_prefork rewrite headers

# Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# COPY EVERYTHING FIRST (Botble requirement)
COPY . .

# Create cache & storage dirs BEFORE composer runs
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

# Install PHP deps AFTER platform exists
RUN composer install \
    --no-dev \
    --prefer-dist \
    --optimize-autoloader \
    --no-interaction

# Botble CMS Environment Variables
ENV APP_ENV=production
ENV APP_DEBUG=false
ENV APP_URL=http://localhost:8000
ENV APP_NAME=JobBox
ENV APP_KEY=base64:Omp5ltYMzn9+LpxAj63fE2Hd8qP2svGrGKf0/er+0IQ=
ENV APP_CIPHER=AES-256-CBC
ENV APP_LOCALE=en
ENV APP_FALLBACK_LOCALE=en
ENV APP_FAKER_LOCALE=en_US
# Use MySQL if available (via Wasmer), otherwise SQLite
ENV DB_CONNECTION=mysql
ENV DB_HOST=${DB_HOST}
ENV DB_PORT=${DB_PORT}
ENV DB_DATABASE=${DB_NAME}
ENV DB_USERNAME=${DB_USERNAME}
ENV DB_PASSWORD=${DB_PASSWORD}
ENV ADMIN_DIR=admin
ENV CMS_DISABLE_VERIFICATION=true
ENV CMS_DISABLE_UPDATE_CHECK=true
ENV CMS_DISABLE_WARNING_MESSAGES=true
ENV CMS_ENABLE_INSTALLER=false
ENV CACHE_DRIVER=file
ENV SESSION_DRIVER=file
ENV QUEUE_CONNECTION=sync
ENV BROADCAST_DRIVER=log
ENV LOG_CHANNEL=stderr
ENV LOG_LEVEL=error
ENV FILESYSTEM_DISK=local
ENV VIEW_COMPILED_PATH=/var/www/html/storage/framework/views

# Apache document root
RUN sed -i 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/public|g' \
    /etc/apache2/sites-available/000-default.conf

# Railway will set PORT env var
# EXPOSE 80

# Entrypoint
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

# Healthcheck for container (Botble uses root path)
HEALTHCHECK --interval=30s --timeout=10s --start-period=120s \
 CMD curl -f http://localhost/ || exit 1

CMD ["apache2-foreground"]
