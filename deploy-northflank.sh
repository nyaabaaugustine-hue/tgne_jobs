#!/bin/bash
# Northflank Deployment Script for JobBox

echo "=== Preparing JobBox for Northflank Deployment ==="

# Generate application key if not exists
if [ ! -f .env ]; then
    echo "Creating .env file..."
    cp .env.example .env
    php artisan key:generate --ansi
fi

# Ensure storage directories exist
echo "Setting up storage directories..."
mkdir -p storage/framework/cache
mkdir -p storage/framework/sessions  
mkdir -p storage/framework/views
mkdir -p storage/logs
mkdir -p bootstrap/cache

# Set proper permissions
echo "Setting permissions..."
chmod -R 775 storage bootstrap/cache
chmod -R 664 database/database.sqlite 2>/dev/null || true

# Clear caches
echo "Clearing Laravel caches..."
php artisan config:clear
php artisan route:clear
php artisan view:clear
php artisan cache:clear

# Create storage symlink
echo "Creating storage symlink..."
php artisan storage:link

# Run migrations
echo "Running database migrations..."
php artisan migrate --force

# Seed demo data
echo "Seeding demo data..."
php artisan db:seed --class=DatabaseSeeder

echo "=== Deployment preparation complete ==="
echo "Ready for Northflank deployment!"