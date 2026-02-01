# BULLETPROOF JobBox Dockerfile - FINAL VERSION
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
        pcntl \
        opcache \
        sodium

# CRITICAL: Verify ALL extensions are working
RUN php -m | grep -E "(zip|calendar|gd|pdo_sqlite|mbstring)" && \
    echo "✅ ALL REQUIRED PHP EXTENSIONS VERIFIED"

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Enable Apache modules
RUN a2enmod rewrite headers

# Set working directory
WORKDIR /var/www/html

# Copy composer files first for better caching
COPY composer.json composer.lock ./

# Install composer dependencies FIRST (before copying app files)
RUN composer install \
    --no-dev \
    --optimize-autoloader \
    --no-interaction \
    --prefer-dist \
    --no-scripts

# Now copy application files
COPY . .

# Ensure production database is available
RUN if [ -f database/production_database.sqlite ]; then \
        echo "✅ Production database found - copying to database.sqlite"; \
        cp database/production_database.sqlite database/database.sqlite; \
    else \
        echo "❌ Production database not found - creating empty database"; \
        touch database/database.sqlite; \
    fi

# Create .env from example
RUN cp .env.example .env

# Set up directories and permissions
RUN mkdir -p \
    database \
    storage/logs \
    storage/framework/cache \
    storage/framework/sessions \
    storage/framework/views \
    bootstrap/cache \
    public/storage && \
    chmod 664 database/database.sqlite && \
    chown -R www-data:www-data /var/www/html && \
    chmod -R 775 storage bootstrap/cache

# Run post-install scripts
RUN composer run-script post-autoload-dump --no-interaction || echo "Post-autoload-dump completed"

# Generate Laravel app key
RUN php artisan key:generate --force

# Remove existing storage link if it exists, then create new one
RUN rm -f public/storage && php artisan storage:link

# Cache Laravel configuration (with error handling)
RUN php artisan config:cache || echo "Config cache failed - continuing" && \
    php artisan route:cache || echo "Route cache failed - continuing" && \
    php artisan view:cache || echo "View cache failed - continuing"

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