#!/bin/bash
# Cloudinary Setup Script for JobBox

echo "=== Setting up Cloudinary Integration ==="

# Check if Cloudinary environment variables are set
if [ -z "$CLOUDINARY_URL" ] || [ -z "$CLOUDINARY_CLOUD_NAME" ]; then
    echo "Warning: Cloudinary environment variables not set"
    echo "Please add the following to your Render environment variables:"
    echo "CLOUDINARY_URL=cloudinary://your_api_key:your_api_secret@your_cloud_name"
    echo "CLOUDINARY_CLOUD_NAME=your_cloud_name"
    echo "CLOUDINARY_API_KEY=your_api_key"
    echo "CLOUDINARY_API_SECRET=your_api_secret"
fi

# Create Cloudinary folder if it doesn't exist
echo "Creating Cloudinary folder structure..."
mkdir -p storage/app/cloudinary
chmod 775 storage/app/cloudinary

# Clear caches
echo "Clearing Laravel caches..."
php artisan config:clear
php artisan cache:clear
php artisan route:clear
php artisan view:clear

# Run migrations
echo "Running database migrations..."
php artisan migrate --force

# Seed demo data
echo "Seeding demo data..."
php artisan db:seed --class=DatabaseSeeder

echo "=== Cloudinary Setup Complete ==="