@echo off
echo Preparing JobBox for Render deployment...

echo.
echo 1. Checking demo data export...
if exist "demo_data_export.json" (
    echo ✓ Demo data export found
) else (
    echo ✗ Demo data export missing - running export...
    php export_demo_data.php
)

echo.
echo 2. Optimizing for production...
composer install --no-dev --optimize-autoloader

echo.
echo 3. Testing database connection...
php artisan config:clear
php artisan cache:clear

echo.
echo 4. Validating seeder...
php artisan db:seed --class=ProductionDataSeeder --dry-run

echo.
echo ✓ Deployment preparation complete!
echo.
echo Next steps:
echo 1. Update DB_PASSWORD in render.yaml with your actual PostgreSQL password
echo 2. Push to GitHub or deploy directly to Render
echo 3. Your app will be available at: https://your-app-name.onrender.com
echo 4. Admin panel: https://your-app-name.onrender.com/admin
echo 5. Login with: admin@admin.com / admin123
echo.
pause