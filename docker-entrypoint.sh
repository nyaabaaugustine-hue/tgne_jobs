#!/bin/sh
set -e

php artisan key:generate --force || true

php artisan config:clear
php artisan route:clear
php artisan view:clear
php artisan config:cache

exec apache2-foreground