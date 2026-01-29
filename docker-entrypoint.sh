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

# Clear all caches first to avoid conflicts
php artisan config:clear || true
php artisan route:clear || true
php artisan view:clear || true
php artisan cache:clear || true

# Check if .env file exists, if not create from example
if [ ! -f .env ]; then
  echo "Creating .env file from example..."
  cp .env.example .env
  # Set APP_KEY from environment if available
  if [ -n "$APP_KEY" ]; then
    sed -i "s|^APP_KEY=.*|APP_KEY=$APP_KEY|" .env
  fi
fi

# Generate app key only if not set in environment
if [ -z "$APP_KEY" ]; then
  echo "APP_KEY not set in environment, generating..."
  php artisan key:generate --force
else
  echo "APP_KEY is already set via environment"
  # Ensure the key is in the .env file for Laravel to pick it up
  if [ -f .env ]; then
    sed -i "s|^APP_KEY=.*|APP_KEY=$APP_KEY|" .env
  fi
fi

# Check if database exists and run migrations
php artisan migrate:status || {
  echo "Running migrations..."
  php artisan migrate --force || {
    echo "Migration failed, trying to install..."
    php artisan migrate --force
  }
}

# Cache configuration after migrations
php artisan config:cache || true
php artisan route:cache || true
php artisan view:cache || true

# Run any pending migrations
php artisan migrate:status || {
  echo "Running migrations..."
  php artisan migrate --force || {
    echo "Migration failed, trying to install..."
    php artisan migrate --force
  }
}

# Install demo data if CMS_ENABLE_DEMO_DATA is set to true
if [ "$CMS_ENABLE_DEMO_DATA" = "true" ] || [ "$CMS_ENABLE_DEMO_DATA" = "1" ]; then
  echo "Installing demo data..."
  # Try the correct CMS install command with demo data
  php artisan cms:install --demo || {
    echo "Trying alternative demo installation..."
    php artisan db:seed || {
      echo "Demo data installation failed - continuing without demo data"
    }
  }
else
  echo "Demo data installation skipped (set CMS_ENABLE_DEMO_DATA=true to enable)"
fi

# Cache configuration after migrations
php artisan config:cache || true
php artisan route:cache || true
php artisan view:cache || true

# Check for Laravel logs
if [ -f "storage/logs/laravel.log" ]; then
  echo "Laravel log tail:"
  tail -n 20 storage/logs/laravel.log
else
  echo "No Laravel log file yet"
fi

echo "Starting Apache for final service..."
# Start Apache for actual service
exec apache2-foreground