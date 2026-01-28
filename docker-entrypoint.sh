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

exec apache2-foreground