#!/bin/bash
set -e

echo "=== Starting docker-entrypoint.sh ==="

# Setup permissions
echo "Setting up file permissions..."
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# Configure Apache for Render's dynamic port
PORT=${PORT:-10000}
echo "Configuring Apache for Render port: $PORT"
sed -i "s/Listen 80/Listen $PORT/g" /etc/apache2/ports.conf
sed -i "s/:80>/:$PORT>/g" /etc/apache2/sites-available/000-default.conf
sed -i "s/80/$PORT/g" /etc/apache2/sites-available/000-default.conf

echo "Apache configuration updated"

# Basic Laravel setup
echo "Running Laravel setup commands..."
php artisan config:clear
php artisan route:clear
php artisan view:clear
php artisan cache:clear

# Create .env if needed
if [ ! -f .env ]; then
  echo "Creating .env file from example..."
  cp .env.example .env
  # Set APP_KEY from environment
  if [ -n "$APP_KEY" ]; then
    sed -i "s|^APP_KEY=.*|APP_KEY=$APP_KEY|" .env
  fi
fi

# Run migrations only
echo "Running migrations..."
php artisan migrate --force

echo "Starting Apache..."
exec apache2-foreground
