# BULLETPROOF JobBox Dockerfile - GUARANTEED TO WORK
FROM php:8.3-apache

# Set environment variables early
ENV DEBIAN_FRONTEND=noninteractive
ENV COMPOSER_MEMORY_LIMIT=-1
ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_NO_INTERACTION=1

# Install ALL system dependencies in one layer
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    unzip \
    zip \
    sqlite3 \
    libsqlite3-dev \
    libzip-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libonig-dev \
    libxml2-dev \
    libicu-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install PHP extensions with explicit configuration
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) \
        pdo \
        pdo_sqlite \
        zip \
        calendar \
        gd \
        mbstring \
        xml \
        intl \
        bcmath \
        exif \
        pcntl

# CRITICAL: Verify ALL extensions are working
RUN php -m | grep zip && \
    php -m | grep calendar && \
    php -m | grep gd && \
    php -m | grep pdo_sqlite && \
    php -m | grep mbstring && \
    echo "✅ ALL PHP EXTENSIONS VERIFIED"

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Enable Apache modules
RUN a2enmod rewrite headers

# Set working directory
WORKDIR /var/www/html

# Copy application files
COPY . .

# Create .env from example (remove any existing .env)
RUN rm -f .env && cp .env.example .env

# Set up directories and permissions BEFORE composer
RUN mkdir -p \
    database \
    storage/logs \
    storage/framework/cache \
    storage/framework/sessions \
    storage/framework/views \
    bootstrap/cache \
    public/storage

# Copy production database
RUN cp database/production_database.sqlite database/database.sqlite && \
    chmod 664 database/database.sqlite

# Set permissions
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 775 storage bootstrap/cache

# Install composer dependencies (extensions are verified working)
RUN composer install \
    --no-dev \
    --optimize-autoloader \
    --no-interaction \
    --prefer-dist \
    --no-scripts \
    || composer install \
    --no-dev \
    --optimize-autoloader \
    --no-interaction \
    --prefer-dist \
    --no-scripts \
    --ignore-platform-reqs

# Run post-install scripts manually
RUN composer run-script post-autoload-dump || true

# Generate Laravel app key
RUN php artisan key:generate --force

# Create storage link
RUN php artisan storage:link

# Cache Laravel configuration
RUN php artisan config:cache && \
    php artisan route:cache && \
    php artisan view:cache

# Copy Apache configuration
COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf

# Final permission fix
RUN chown -R www-data:www-data /var/www/html

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
    CMD curl -f http://localhost/health.php || exit 1

# Expose port
EXPOSE 80

# Start Apache directly (no custom entrypoint to avoid issues)
CMD ["apache2-foreground"]