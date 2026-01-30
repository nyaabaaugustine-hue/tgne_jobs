#!/bin/bash
set -e

echo "=== Starting docker-entrypoint.sh ==="

# File permissions
chown -R www-data:www-data /var/www/html
chmod -R 755 storage bootstrap/cache database

# Apache port config
PORT=${PORT:-10000}
sed -i "s/Listen 80/Listen $PORT/g" /etc/apache2/ports.conf
sed -i "s/:80>/:$PORT>/g" /etc/apache2/sites-available/000-default.conf
sed -i "s/80/$PORT/g" /etc/apache2/sites-available/000-default.conf

# Laravel caches
php artisan config:clear
php artisan route:clear
php artisan view:clear
php artisan cache:clear

# Ensure .env exists
if [ ! -f .env ]; then
  cp .env.example .env
  if [ -n "$APP_KEY" ]; then
    sed -i "s|^APP_KEY=.*|APP_KEY=$APP_KEY|" .env
  fi
fi

# Only core migrations
php artisan migrate --force || true

# Start Apache
exec apache2-foreground