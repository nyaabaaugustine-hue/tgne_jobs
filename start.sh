#!/bin/bash

echo "=== Starting JobBox with Demo Data ==="

# Ensure database exists with demo data
if [ ! -f database/database.sqlite ]; then
    echo "Restoring demo database..."
    cp database/production_database.sqlite database/database.sqlite
    chmod 664 database/database.sqlite
fi

# Ensure storage directories exist
mkdir -p storage/logs
mkdir -p storage/framework/cache
mkdir -p storage/framework/sessions
mkdir -p storage/framework/views

# Set permissions
chmod -R 775 storage bootstrap/cache
chmod 664 database/database.sqlite

# Ensure storage link exists
if [ ! -L public/storage ]; then
    echo "Creating storage link..."
    php artisan storage:link
fi

# Verify demo data is present
ACCOUNT_COUNT=$(php artisan tinker --execute="echo DB::table('jb_accounts')->count();")
echo "Starting with $ACCOUNT_COUNT demo accounts"

# Start the application
echo "Starting JobBox application..."
php artisan serve --host=0.0.0.0 --port=$PORT
