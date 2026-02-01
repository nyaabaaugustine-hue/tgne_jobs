#!/bin/bash

echo "=== JobBox Build with Demo Data Preservation ==="

# Update composer to latest version
echo "Updating composer..."
composer self-update --2 || true

# Clear any existing composer cache
echo "Clearing composer cache..."
composer clear-cache || true

# Install dependencies with verbose output and error handling
echo "Installing PHP dependencies..."
composer install --no-dev --optimize-autoloader --no-interaction --prefer-dist --ignore-platform-req=ext-zip --ignore-platform-req=ext-calendar || {
    echo "First install failed, trying with all platform requirements ignored..."
    composer install --no-dev --optimize-autoloader --no-interaction --prefer-dist --ignore-platform-reqs
}

# Ensure database directory exists
echo "Setting up database..."
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
mkdir -p public/storage

# Set permissions
echo "Setting permissions..."
chmod -R 775 storage bootstrap/cache
chmod 664 database/database.sqlite

# Create storage link (may fail in build environment)
echo "Creating storage link..."
php artisan storage:link || echo "Storage link will be created at startup"

# Generate app key if needed
echo "Generating application key..."
php artisan key:generate --force || echo "Key generation will happen at startup"

# Cache configuration (may fail without proper env)
echo "Caching configuration..."
php artisan config:cache || echo "Config caching will happen at startup"

# Verify demo data
echo "Verifying demo data..."
ACCOUNT_COUNT=$(php artisan tinker --execute="echo DB::table('jb_accounts')->count();" 2>/dev/null || echo "Unknown")
COMPANY_COUNT=$(php artisan tinker --execute="echo DB::table('jb_companies')->count();" 2>/dev/null || echo "Unknown")
JOB_COUNT=$(php artisan tinker --execute="echo DB::table('jb_jobs')->count();" 2>/dev/null || echo "Unknown")

echo "Demo data status:"
echo "- Accounts: $ACCOUNT_COUNT"
echo "- Companies: $COMPANY_COUNT"
echo "- Jobs: $JOB_COUNT"

echo "=== Build completed successfully with demo data! ==="
