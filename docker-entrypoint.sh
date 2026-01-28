#!/bin/bash
set -e

echo "Booting application..."

# Ensure SQLite DB exists (Render disk may be empty)
if [ ! -f database/database.sqlite ]; then
  echo "Creating SQLite database..."
  touch database/database.sqlite
  chown www-data:www-data database/database.sqlite
  chmod 664 database/database.sqlite
fi

# Wait a moment for services to be ready
sleep 2

# Only run migrations if environment is properly configured
if [ -n "$APP_KEY" ] && [ -n "$DB_CONNECTION" ]; then
  echo "Running migrations..."
  php artisan migrate --force || echo "Migration failed, continuing..."
else
  echo "Environment not fully configured, skipping migrations"
fi

# Clear & rebuild caches (Botble needs this)
php artisan optimize:clear || echo "Optimize clear failed, continuing..."
php artisan optimize || echo "Optimize failed, continuing..."

exec apache2-foreground