#!/bin/bash

# Deploy with Cloud Storage Setup
# This script helps prepare for deployment with persistent image storage

echo "🚀 Preparing deployment with cloud storage support..."

# Check if we're in the right directory
if [ ! -f "composer.json" ]; then
    echo "❌ Error: Run this script from the project root directory"
    exit 1
fi

echo "📦 Installing cloud storage packages..."
composer require cloudinary/cloudinary_php league/flysystem-aws-s3-v3 --no-interaction

echo "🔧 Updating composer dependencies..."
composer update --no-interaction --optimize-autoloader

echo "📋 Deployment checklist:"
echo ""
echo "✅ Cloud storage packages installed"
echo "✅ Composer dependencies updated"
echo "✅ Web-based migration tools ready"
echo ""
echo "🎯 Next steps:"
echo "1. Commit and push these changes to GitHub"
echo "2. Set up cloud storage account (Cloudinary or AWS S3)"
echo "3. Add environment variables to Render dashboard:"
echo ""
echo "   For Cloudinary:"
echo "   FILESYSTEM_DISK=cloudinary"
echo "   CLOUDINARY_CLOUD_NAME=your_cloud_name"
echo "   CLOUDINARY_API_KEY=your_api_key"
echo "   CLOUDINARY_API_SECRET=your_api_secret"
echo ""
echo "   For AWS S3:"
echo "   FILESYSTEM_DISK=s3"
echo "   AWS_ACCESS_KEY_ID=your_key"
echo "   AWS_SECRET_ACCESS_KEY=your_secret"
echo "   AWS_DEFAULT_REGION=us-east-1"
echo "   AWS_BUCKET=your_bucket_name"
echo ""
echo "4. Redeploy on Render"
echo "5. Run migration: https://your-app.onrender.com/migrate-images.php?key=migrate-2026"
echo ""
echo "📚 See IMAGE_PERSISTENCE_SOLUTION.md for detailed instructions"
echo ""
echo "🎉 Ready to deploy!"