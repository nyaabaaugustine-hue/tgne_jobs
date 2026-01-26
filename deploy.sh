#!/bin/bash

# Deployment script for Render

set -e

echo "Starting deployment..."

# Clear caches
php artisan config:clear || echo "Config clear failed"
php artisan cache:clear || echo "Cache clear failed"

# Run migrations if this is the first deployment
if [ "$RENDER" = "true" ]; then
    echo "Running migrations..."
    php artisan migrate --force
fi

# Publish CMS assets
php artisan cms:publish:assets --force

# Optimize autoloader
composer dump-autoload --optimize --classmap-authoritative

echo "Deployment completed!"