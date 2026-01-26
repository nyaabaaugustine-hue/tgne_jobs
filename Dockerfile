FROM php:8.4-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git curl zip unzip \
    libpng-dev libjpeg-dev libfreetype6-dev \
    libonig-dev libxml2-dev libzip-dev libsqlite3-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd xml zip calendar intl opcache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html

# Copy all application files first
COPY . /var/www/html/

# Install PHP dependencies
RUN composer install --no-dev --optimize-autoloader --no-interaction --prefer-dist

# Copy custom .env file for production
COPY .env.production .env

# Generate application key using php command directly
RUN php -r "file_put_contents('.env', preg_replace('/^APP_KEY=.*$/m', 'APP_KEY=base64:' . base64_encode(random_bytes(32)), file_get_contents('.env')));"



# Clear caches
RUN php artisan optimize:clear

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html \
 && find /var/www/html -type f -exec chmod 644 {} \; \
 && find /var/www/html -type d -exec chmod 755 {} \; \
 && chmod -R 775 storage bootstrap/cache

# Configure Apache document root
RUN sed -i -e 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/public|g' /etc/apache2/sites-available/000-default.conf

# Expose port
EXPOSE 80

# Create symbolic link for storage
RUN ln -sf ../storage/app/public public/storage

# Start Apache in foreground
CMD ["apache2-foreground"]