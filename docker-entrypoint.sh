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

# Run migrations every deploy
php artisan migrate --force

# Clear & rebuild caches (Botble needs this)
php artisan optimize:clear
php artisan optimize

exec "$@"