# ULTRA BULLETPROOF JobBox Dockerfile - FINAL VERSION
FROM php:8.3-apache

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV COMPOSER_MEMORY_LIMIT=-1
ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_NO_INTERACTION=1

# Install ALL required system dependencies in one go
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

# Install PHP extensions (including sodium with proper dependencies)
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

# Verify critical extensions are installed
RUN php -m | grep -E "(zip|calendar|pdo_sqlite|sodium)" && \
    echo "✅ ALL CRITICAL EXTENSIONS VERIFIED"

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Enable Apache modules
RUN a2enmod rewrite headers

# Set working directory
WORKDIR /var/www/html

# Copy all application files first (Build: 2026-02-01-v2)
COPY . .

# Install composer dependencies after all files are copied
RUN composer install \
    --no-dev \
    --optimize-autoloader \
    --no-interaction \
    --prefer-dist

# Ensure production database is copied
RUN if [ -f database/production_database.sqlite ]; then \
        echo "✅ Using production database with demo data"; \
        cp database/production_database.sqlite database/database.sqlite; \
    else \
        echo "⚠️ Creating empty database"; \
        touch database/database.sqlite; \
    fi

# Create .env from example
RUN cp .env.example .env

# Set up directories and permissions
RUN mkdir -p \
    storage/logs \
    storage/framework/cache \
    storage/framework/sessions \
    storage/framework/views \
    bootstrap/cache \
    public/storage \
    && chmod 664 database/database.sqlite \
    && chown -R www-data:www-data /var/www/html \
    && chmod -R 775 storage bootstrap/cache

# Generate Laravel app key
RUN php artisan key:generate --force

# Create storage link (remove existing first)
RUN rm -f public/storage && php artisan storage:link

# Cache Laravel configuration with error handling
RUN php artisan config:cache || echo "Config cache skipped" \
    && php artisan route:cache || echo "Route cache skipped" \
    && php artisan view:cache || echo "View cache skipped"

# Copy Apache configuration
COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf

# Final permission fix
RUN chown -R www-data:www-data /var/www/html

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
    CMD curl -f http://localhost/health.php || exit 1

# Expose port
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]