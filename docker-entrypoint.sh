#!/bin/sh
set -e

echo "=== Starting docker-entrypoint.sh ==="

echo "Setting up file permissions..."
# Ensure proper ownership
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# Ensure SQLite DB exists
if [ ! -f database/database.sqlite ]; then
  echo "Creating SQLite database..."
  touch database/database.sqlite
  chown www-data:www-data database/database.sqlite
  chmod 664 database/database.sqlite
fi

# Start Apache in background to allow artisan commands to run
if [ -n "$PORT" ]; then
  echo "Configuring Apache for Railway port: $PORT"
  sed -i "s/Listen 80/Listen $PORT/g" /etc/apache2/ports.conf
  sed -i "s/:80>/:$PORT>/g" /etc/apache2/sites-available/000-default.conf
  sed -i "s/80/$PORT/g" /etc/apache2/sites-available/000-default.conf
fi

# Start Apache temporarily to serve artisan commands
apache2-foreground &
APACHE_PID=$!

# Wait a moment for Apache to start
sleep 5

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

# Stop temporary Apache
kill $APACHE_PID 2>/dev/null || true
wait $APACHE_PID 2>/dev/null || true

echo "Waiting for Laravel to fully initialize..."
# Sleep to allow Laravel to fully initialize
sleep 20

echo "Starting Apache for final service..."
# Start Apache for actual service
exec apache2-foreground