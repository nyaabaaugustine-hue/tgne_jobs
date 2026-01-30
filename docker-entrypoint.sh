#!/bin/bash
set -e

echo "=== Starting docker-entrypoint.sh ==="

# Setup permissions
chown -R www-data:www-data /var/www/html
chmod -R 755 storage bootstrap/cache database

# Apache port config
PORT=${PORT:-10000}
sed -i "s/Listen 80/Listen $PORT/g" /etc/apache2/ports.conf
sed -i "s/:80>/:$PORT>/g" /etc/apache2/sites-available/000-default.conf
sed -i "s/80/$PORT/g" /etc/apache2/sites-available/000-default.conf

# Ensure SQLite database file exists and has proper permissions
if [ ! -f database/database.sqlite ]; then
  touch database/database.sqlite
  chown www-data:www-data database/database.sqlite
  chmod 664 database/database.sqlite
fi

# Laravel caches
php artisan config:clear
php artisan route:clear
php artisan view:clear
php artisan cache:clear

# Start Apache
exec apache2-foreground