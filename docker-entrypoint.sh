#!/bin/bash
set -e

echo "=== JobBox Docker Startup ==="

# Ensure database exists
if [ ! -f /var/www/html/database/database.sqlite ]; then
    echo "Restoring database from backup..."
    cp /var/www/html/database/production_database.sqlite /var/www/html/database/database.sqlite
    chmod 664 /var/www/html/database/database.sqlite
fi

# Ensure storage directories exist with proper permissions
mkdir -p /var/www/html/storage/logs
mkdir -p /var/www/html/storage/framework/cache
mkdir -p /var/www/html/storage/framework/sessions
mkdir -p /var/www/html/storage/framework/views
mkdir -p /var/www/html/bootstrap/cache
chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Ensure storage link exists
if [ ! -L /var/www/html/public/storage ]; then
    echo "Creating storage link..."
    php artisan storage:link || echo "Storage link creation failed, continuing..."
fi

# Cache configuration if not already cached
if [ ! -f /var/www/html/bootstrap/cache/config.php ]; then
    echo "Caching configuration..."
    php artisan config:cache || echo "Config caching failed, continuing..."
fi

# Set proper ownership
chown -R www-data:www-data /var/www/html

echo "=== Starting Apache ==="
exec apache2-foreground