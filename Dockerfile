# BULLETPROOF JobBox Dockerfile - FINAL WORKING VERSION
FROM php:8.3-apache

# Force complete cache invalidation
ENV BUILD_ID=2026-02-01-FINAL
ENV DEBIAN_FRONTEND=noninteractive
ENV COMPOSER_MEMORY_LIMIT=-1
ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_NO_INTERACTION=1

# Install ALL required system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
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
    libsodium-dev \
    && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) \
        pdo_sqlite \
        zip \
        calendar \
        gd \
        mbstring \
        xml \
        intl \
        bcmath \
        sodium

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Enable Apache modules
RUN a2enmod rewrite headers

# Set working directory
WORKDIR /var/www/html

# CRITICAL: Copy ALL application files FIRST
COPY . .

# Create required directories with proper permissions
RUN mkdir -p \
    bootstrap/cache \
    storage/logs \
    storage/framework/cache \
    storage/framework/sessions \
    storage/framework/views \
    public/storage \
    && chmod -R 775 bootstrap/cache storage

# NOW run composer install (artisan exists, directories exist)
RUN composer install \
    --no-dev \
    --optimize-autoloader \
    --no-interaction \
    --prefer-dist

# Set up database
RUN if [ -f database/production_database.sqlite ]; then \
        echo "✅ Using production database with demo data"; \
        cp database/production_database.sqlite database/database.sqlite; \
    else \
        echo "⚠️ Creating empty database"; \
        touch database/database.sqlite; \
    fi \
    && chmod 664 database/database.sqlite

# Create .env from example
RUN cp .env.example .env

# Generate Laravel app key
RUN php artisan key:generate --force

# Create storage link
RUN rm -f public/storage && php artisan storage:link

# Cache Laravel configuration
RUN php artisan config:cache || echo "Config cache skipped" \
    && php artisan route:cache || echo "Route cache skipped" \
    && php artisan view:cache || echo "View cache skipped"

# Copy Apache configuration
COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf

# Final permissions
RUN chown -R www-data:www-data /var/www/html

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
    CMD curl -f http://localhost/health.php || exit 1

# Expose port
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]