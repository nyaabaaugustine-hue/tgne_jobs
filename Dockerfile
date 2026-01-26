FROM php:8.4-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    libsqlite3-dev \
    libzip-dev \
    libcurl4-openssl-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd xml tokenizer \
    && docker-php-ext-install zip \
    && docker-php-ext-install calendar

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html

# Copy composer files first for better caching
COPY composer.json composer.lock /var/www/html/

# Install PHP dependencies
RUN composer install --no-dev --optimize-autoloader --ignore-platform-reqs --no-interaction --prefer-dist

# Copy application files
COPY . /var/www/html

# Copy custom .env file for production
COPY .env.production .env

# Generate application key using php command directly
RUN php -r "file_put_contents('.env', preg_replace('/^APP_KEY=.*$/m', 'APP_KEY=' . base64_encode(random_bytes(32)), file_get_contents('.env')));"

# Make deployment script executable and run it
COPY deploy.sh /var/www/html/deploy.sh
RUN chmod +x deploy.sh

# Clear caches
RUN php artisan config:clear && php artisan cache:clear

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html && \
    chmod -R 775 /var/www/html/storage && \
    chmod -R 775 /var/www/html/bootstrap/cache

# Configure Apache document root
RUN sed -i -e 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/public|g' /etc/apache2/sites-available/000-default.conf

# Expose port
EXPOSE 80

# Create symbolic link for storage
RUN ln -sf ../storage/app/public public/storage

# Create a startup script that runs deployment tasks first
RUN echo '#!/bin/bash\n\n# Run deployment script\nphp /var/www/html/deploy.sh\n\n# Start Apache in foreground\napache2-foreground' > /start.sh
RUN chmod +x /start.sh

# Start Apache in foreground
CMD ["/start.sh"]