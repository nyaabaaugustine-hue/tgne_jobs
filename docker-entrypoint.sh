#!/bin/sh
set -e

# Ensure SQLite DB exists
if [ ! -f database/database.sqlite ]; then
  echo "Creating SQLite database..."
  touch database/database.sqlite
  chown www-data:www-data database/database.sqlite
fi

# Generate key if not set
php artisan key:generate --force || true

# Clear and cache config after env vars are available
php artisan config:clear
php artisan route:clear
php artisan view:clear
php artisan config:cache

# Start Apache on Railway's PORT or default to 8080
if [ -n "$PORT" ]; then
  echo "Starting Apache on port $PORT"
  sed -i "s/Listen 80/Listen $PORT/g" /etc/apache2/ports.conf
  sed -i "s/:80>/:$PORT>/g" /etc/apache2/sites-available/000-default.conf
  sed -i "s/80/$PORT/g" /etc/apache2/sites-available/000-default.conf
fi

exec apache2-foreground