# JobBox Deployment Instructions

## Image Persistence Setup

### 1. Upload Files
- Upload entire project folder to your server
- Ensure all files in `storage/` directory are uploaded
- Ensure all files in `public/storage/` directory are uploaded

### 2. Set Permissions
```bash
chmod -R 755 storage/
chmod -R 755 public/storage/
chmod -R 755 bootstrap/cache/
```

### 3. Create Storage Link (if needed)
```bash
php artisan storage:link
```

### 4. Verify Images
- Check that `public/storage/` contains all image directories
- Verify database references point to correct image paths
- Test image loading on frontend

### 5. Image Directories to Verify:
- public/storage/banners/ (343 total images)
- public/storage/companies/
- public/storage/categories/
- public/storage/galleries/
- public/storage/icons/
- public/storage/logos/
- public/storage/pages/
- public/storage/team/
- public/storage/testimonials/
- public/storage/general/

### 6. Database Image References:
- Company logos: 13 records
- Media files: 150 records  
- Settings images: 10 records

### 7. Backup Files Created:
- deployment_images_backup/ (complete image backup)
- production_database.sqlite (database with image references)
- .env.production (environment template)

## Troubleshooting Images:
If images don't load after deployment:
1. Check file permissions (755 for directories, 644 for files)
2. Verify storage link exists: `ls -la public/storage`
3. Check .env file APP_URL setting
4. Verify web server can access public/storage/
