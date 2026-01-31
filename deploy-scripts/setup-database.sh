#!/bin/bash

echo "Setting up database for production..."

# Wait for database to be ready
echo "Waiting for database connection..."
php artisan tinker --execute="
try {
    DB::connection()->getPdo();
    echo 'Database connection successful!';
} catch (Exception \$e) {
    echo 'Database connection failed: ' . \$e->getMessage();
    exit(1);
}
"

# Run migrations
echo "Running database migrations..."
php artisan migrate --force

# Check if demo data already exists
echo "Checking for existing demo data..."
ADMIN_EXISTS=$(php artisan tinker --execute="echo DB::table('users')->where('email', 'admin@admin.com')->exists() ? 'true' : 'false';")

if [ "$ADMIN_EXISTS" = "false" ]; then
    echo "Seeding demo data..."
    php artisan db:seed --class=ProductionDataSeeder --force
else
    echo "Demo data already exists, skipping seeding..."
fi

# Create storage link
echo "Creating storage link..."
php artisan storage:link

# Clear and cache config
echo "Optimizing application..."
php artisan config:cache
php artisan route:cache
php artisan view:cache

echo "Database setup completed!"