#!/bin/bash
set -e

# Run migrations
php artisan migrate --force

# Link storage
php artisan storage:link

# Publish assets
php artisan cms:publish:assets

# Clear caches
php artisan config:clear
php artisan route:clear
php artisan view:clear
php artisan cache:clear

# Start Apache
exec apache2-foreground