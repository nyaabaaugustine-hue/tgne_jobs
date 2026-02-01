#!/bin/bash

echo "🚀 Setting up database for production deployment..."

# Wait for database to be ready
echo "⏳ Waiting for database connection..."
until php artisan migrate:status > /dev/null 2>&1; do
    echo "Database not ready, waiting 5 seconds..."
    sleep 5
done

echo "✅ Database connection established!"

# Run migrations
echo "🔄 Running database migrations..."
php artisan migrate --force

# Check if demo data already exists
if php artisan tinker --execute="echo \DB::table('users')->where('email', 'admin@admin.com')->exists() ? 'EXISTS' : 'MISSING';" | grep -q "EXISTS"; then
    echo "✅ Demo data already exists, skipping seeding"
else
    echo "📊 Seeding demo data..."
    php artisan db:seed --class=ProductionDataSeeder --force
fi

# Clear caches
echo "🧹 Clearing application caches..."
php artisan config:clear
php artisan cache:clear
php artisan view:clear
php artisan route:clear

echo "🎉 Database setup completed successfully!"