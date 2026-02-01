#!/bin/bash

echo "=== JobBox Build with Demo Data Preservation ==="

# Install dependencies
echo "Installing dependencies..."
composer install --no-dev --optimize-autoloader

# Ensure database directory exists
mkdir -p database

# Preserve demo data
if [ ! -f database/database.sqlite ]; then
    echo "Copying production database with demo data..."
    cp database/production_database.sqlite database/database.sqlite
    chmod 664 database/database.sqlite
else
    echo "Database already exists, preserving current data..."
fi

# Create necessary directories
echo "Creating storage directories..."
mkdir -p storage/logs
mkdir -p storage/framework/cache
mkdir -p storage/framework/sessions
mkdir -p storage/framework/views
mkdir -p bootstrap/cache

# Set permissions
echo "Setting permissions..."
chmod -R 775 storage bootstrap/cache
chmod 664 database/database.sqlite

# Create storage link
echo "Creating storage link..."
php artisan storage:link

# Cache configuration
echo "Caching configuration..."
php artisan config:cache
php artisan route:cache  
php artisan view:cache

# Verify demo data
echo "Verifying demo data..."
ACCOUNT_COUNT=$(php artisan tinker --execute="echo DB::table('jb_accounts')->count();")
COMPANY_COUNT=$(php artisan tinker --execute="echo DB::table('jb_companies')->count();")
JOB_COUNT=$(php artisan tinker --execute="echo DB::table('jb_jobs')->count();")

echo "Demo data verified:"
echo "- Accounts: $ACCOUNT_COUNT"
echo "- Companies: $COMPANY_COUNT"
echo "- Jobs: $JOB_COUNT"

echo "=== Build completed successfully with demo data! ==="
