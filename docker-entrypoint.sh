#!/bin/sh
set -e

echo "=== Starting docker-entrypoint.sh ==="

echo "Setting up file permissions..."
# Ensure proper ownership
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# Configure Apache for Render's port
if [ -n "$PORT" ]; then
  echo "Configuring Apache for Render port: $PORT"
  sed -i "s/Listen 80/Listen $PORT/g" /etc/apache2/ports.conf
  sed -i "s/:80>/:$PORT>/g" /etc/apache2/sites-available/000-default.conf
  sed -i "s/80/$PORT/g" /etc/apache2/sites-available/000-default.conf
fi

# Ensure SQLite DB exists
if [ ! -f database/database.sqlite ]; then
  echo "Creating SQLite database..."
  touch database/database.sqlite
  chown www-data:www-data database/database.sqlite
  chmod 664 database/database.sqlite
fi

# Wait a moment for file system to sync
sleep 2

# Check if database file is writable
echo "Checking database permissions..."
ls -la database/database.sqlite

echo "Ensuring storage directories exist..."
mkdir -p storage/framework/cache
mkdir -p storage/framework/sessions
mkdir -p storage/framework/views
mkdir -p storage/logs
chown -R www-data:www-data storage/
chmod -R 775 storage/

echo "Running Laravel setup commands..."

# Generate key if not set
php artisan key:generate --force || true

# Clear and cache config after env vars are available
php artisan config:clear || true
php artisan route:clear || true
php artisan view:clear || true

# Run any pending migrations
php artisan migrate --force || true

# Cache configuration
php artisan config:cache || true
php artisan route:cache || true
php artisan view:cache || true

echo "Starting Apache for final service..."
# Start Apache for actual service
exec apache2-foreground