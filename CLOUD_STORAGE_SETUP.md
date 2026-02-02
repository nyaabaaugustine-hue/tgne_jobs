# 🌩️ Cloud Storage Setup Guide

## 🚨 Problem: Images Break on Every Redeploy

**Root Cause:** Images are stored in container filesystem (ephemeral storage) that gets wiped on each deployment.

**Current Status:** `FILESYSTEM_DISK=local` stores files inside the container, which is destroyed and recreated on every deploy.

## 🎯 Permanent Solution: Cloud Storage

### Option 1: Cloudinary (Recommended for Images) 

Cloudinary is perfect for image-heavy applications like job boards.

#### Step 1: Sign up for Cloudinary
1. Go to [cloudinary.com](https://cloudinary.com)
2. Create free account (generous free tier)
3. Get your credentials from dashboard

#### Step 2: Install Cloudinary Package
```bash
composer require cloudinary/cloudinary_php
```

#### Step 3: Update Render Environment Variables
In your Render dashboard, add these environment variables:

```env
FILESYSTEM_DISK=cloudinary
CLOUDINARY_CLOUD_NAME=your_cloud_name_here
CLOUDINARY_API_KEY=your_api_key_here
CLOUDINARY_API_SECRET=your_api_secret_here
CLOUDINARY_FOLDER=jobbox
```

#### Step 4: Update config/filesystems.php
The Cloudinary configuration is already added to your filesystems.php file.

### Option 2: AWS S3

#### Step 1: Create S3 Bucket
1. Login to AWS Console
2. Create S3 bucket with public read access
3. Get AWS credentials (Access Key ID, Secret Access Key)

#### Step 2: Install AWS SDK
```bash
composer require league/flysystem-aws-s3-v3
```

#### Step 3: Update Render Environment Variables
```env
FILESYSTEM_DISK=s3
AWS_ACCESS_KEY_ID=your_access_key
AWS_SECRET_ACCESS_KEY=your_secret_key
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=your_bucket_name
AWS_URL=https://your_bucket.s3.amazonaws.com
```

## 🔄 Migration Process

### After Setting Up Cloud Storage:

1. **Deploy with new environment variables**
2. **Run migration script** (will be created)
3. **Test image uploads**
4. **Verify persistence after redeploy**

## 🛠️ Temporary Fix (Until Cloud Storage is Ready)

Use the web-based fix script:
```
https://your-app.onrender.com/fix-images.php?key=fix-images-2026
```

This creates placeholder images and fixes URLs temporarily.

## ✅ Benefits of Cloud Storage

- ✅ Images persist through redeployments
- ✅ Better performance (CDN)
- ✅ Automatic image optimization (Cloudinary)
- ✅ Scalable storage
- ✅ Backup and versioning
- ✅ Global distribution

## 🎯 Next Steps

1. Choose cloud storage provider (Cloudinary recommended)
2. Set up account and get credentials
3. Update Render environment variables
4. Redeploy application
5. Test image uploads
6. Migrate existing images (optional)

## 📞 Support

If you need help with setup, the fix-images.php script provides detailed diagnostics and temporary solutions.