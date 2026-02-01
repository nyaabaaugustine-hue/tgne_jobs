#!/bin/bash

echo "🚀 Starting JobBox application..."

# Wait for database to be ready
echo "⏳ Waiting for database connection..."
until php -r "
require 'vendor/autoload.php';
\$app = require 'bootstrap/app.php';
\$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();
try {
    DB::connection()->getPdo();
    echo 'Connected';
    exit(0);
} catch (Exception \$e) {
    exit(1);
}
" > /dev/null 2>&1; do
    echo "Database not ready, waiting 5 seconds..."
    sleep 5
done

echo "✅ Database connection established!"

# Run migrations
echo "📋 Running migrations..."
php artisan migrate --force

# Check if we need to seed data
USERS_COUNT=$(php -r "
require 'vendor/autoload.php';
\$app = require 'bootstrap/app.php';
\$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();
echo DB::table('users')->count();
")

if [ "$USERS_COUNT" -eq "0" ]; then
    echo "📊 Seeding demo data..."
    php artisan db:seed --class=ProductionDataSeeder --force
else
    echo "✅ Demo data already exists"
fi

# Clear and optimize caches
echo "🧹 Optimizing caches..."
php artisan config:clear
php artisan cache:clear
php artisan view:clear
php artisan route:clear
php artisan config:cache
php artisan route:cache
php artisan view:cache

echo "🎉 Application setup complete!"

# Start Apache
exec apache2-foreground