#!/bin/bash
# Render PostgreSQL Deployment Script for JobBox

echo "=== Starting JobBox PostgreSQL Deployment ==="

# Wait for database to be ready
echo "Waiting for PostgreSQL database..."
until php -r "new PDO('pgsql:host=' . getenv('DB_HOST') . ';port=' . getenv('DB_PORT') . ';dbname=' . getenv('DB_DATABASE'), getenv('DB_USERNAME'), getenv('DB_PASSWORD')); echo 'Database connected\n';"; do
    sleep 2
done

# Generate application key if not exists
echo "Setting up application key..."
php artisan key:generate --force

# Clear caches
echo "Clearing caches..."
php artisan config:clear
php artisan route:clear
php artisan view:clear
php artisan cache:clear

# Run migrations
echo "Running database migrations..."
php artisan migrate --force

# Seed demo data
echo "Seeding demo data..."
php artisan db:seed --class=DatabaseSeeder

# Create storage symlink
echo "Creating storage symlink..."
php artisan storage:link

echo "=== PostgreSQL Deployment Complete ==="
echo "JobBox is ready with demo data!"