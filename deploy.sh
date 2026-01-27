#!/bin/bash

# Deployment script for Render

set -e

echo "Starting deployment..."

# Clear caches
php artisan config:clear || echo "Config clear failed"
php artisan route:clear || echo "Route clear failed"
php artisan view:clear || echo "View clear failed"
php artisan cache:clear || echo "Cache clear failed"

# Run migrations
echo "Running migrations..."
php artisan migrate --force

# Link storage
php artisan storage:link || true

# Publish CMS assets
php artisan cms:publish:assets --force

# Optimize autoloader
composer dump-autoload --optimize --classmap-authoritative

# Cache config and routes for production
php artisan optimize

echo "Deployment completed!"