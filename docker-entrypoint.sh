#!/bin/sh
set -e

echo "=== Starting docker-entrypoint.sh ==="

# Basic setup first
echo "Setting up file permissions..."
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# Configure Apache for Render's port
PORT=${PORT:-10000}
echo "Configuring Apache for Render port: $PORT"
sed -i "s/Listen 80/Listen $PORT/g" /etc/apache2/ports.conf
sed -i "s/:80>/:$PORT>/g" /etc/apache2/sites-available/000-default.conf
sed -i "s/80/$PORT/g" /etc/apache2/sites-available/000-default.conf

echo "Apache configuration updated"

# Remove SQLite DB file as we're using PostgreSQL
if [ -f database/database.sqlite ]; then
  echo "Removing SQLite database file..."
  rm -f database/database.sqlite
fi

# Wait a moment for file system to sync
sleep 2

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

# Check if database is PostgreSQL and wait for connection
if [ "$DB_CONNECTION" = "pgsql" ]; then
  echo "Waiting for PostgreSQL connection..."
  # Wait for PostgreSQL to be ready (max 5 minutes)
  for i in $(seq 1 60); do
    if php -r "try { new PDO('pgsql:host=$DB_HOST;port=$DB_PORT;dbname=$DB_DATABASE', '$DB_USERNAME', '$_ENV[DB_PASSWORD]'); echo 'Connected'; } catch (Exception \$e) { echo 'Failed'; }" 2>/dev/null | grep -q "Connected"; then
      echo "Connected to PostgreSQL"
      break
    fi
    echo "Waiting for PostgreSQL... ($i/60)"
    sleep 5
  done
fi

# Run migrations
echo "Running migrations..."
php artisan migrate --force || {
  echo "Migration failed - checking connection..."
  php -r "try { new PDO('pgsql:host=$DB_HOST;port=$DB_PORT;dbname=$DB_DATABASE', '$DB_USERNAME', '$_ENV[DB_PASSWORD]'); echo 'DB Connected'; } catch (Exception \$e) { echo 'DB Error: '.\$e->getMessage(); }" || true
  exit 1
}

# Cache configuration after migrations
php artisan config:cache || true
php artisan route:cache || true
php artisan view:cache || true

# Only run initial setup (admin activation, demo data) if it hasn't been done yet
if [ ! -f /tmp/setup_completed ]; then
  echo "Running initial setup (first time only)..."
  
  # Ensure admin user is activated AFTER migrations
  php artisan db:seed --class=AdminUserActivationSeeder --force || {
    echo "Admin user activation failed"
  }

  # Install demo data only on first run
  if [ "$CMS_ENABLE_DEMO_DATA" = "true" ] || [ "$CMS_ENABLE_DEMO_DATA" = "1" ]; then
    echo "Installing demo data..."
    # Run all seeders to populate demo data
    php artisan db:seed --class=CompanySeeder --force || true
    php artisan db:seed --class=JobSeeder --force || true
    php artisan db:seed --class=JobCategorySeeder --force || true
    php artisan db:seed --class=LocationSeeder --force || true
    php artisan db:seed --class=BlogSeeder --force || true
    php artisan db:seed --class=JobApplicationSeeder --force || true
    php artisan db:seed --class=HomePageSeeder --force || true
  else
    echo "Demo data installation skipped (set CMS_ENABLE_DEMO_DATA=true to enable)"
  fi

  # Mark setup as completed
  touch /tmp/setup_completed
  echo "Initial setup completed!"
else
  echo "Setup already completed, skipping initial setup..."
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