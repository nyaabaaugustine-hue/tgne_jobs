# JobBox Render Deployment Guide

## 🚀 Deployment Steps

### 1. Prepare Your Repository

Your repository is now ready for deployment with:
- ✅ Demo data exported (`demo_data_export.json`)
- ✅ Production seeder created (`ProductionDataSeeder.php`)
- ✅ Render configuration (`render.yaml`)
- ✅ Production environment template (`.env.production`)
- ✅ Database setup script (`deploy-scripts/setup-database.sh`)

### 2. Update Database Password

**IMPORTANT**: You need to update the database password in the deployment:

1. Go to your Render PostgreSQL database dashboard
2. Copy the actual password for user `tgne_jobs_user`
3. Update the `DB_PASSWORD` in `render.yaml` or set it as an environment variable in Render

### 3. Deploy to Render

#### Option A: Connect GitHub Repository
1. Push your code to GitHub
2. Go to Render Dashboard → New → Web Service
3. Connect your GitHub repository
4. Render will automatically detect `render.yaml`

#### Option B: Manual Deploy
1. Go to Render Dashboard → New → Web Service
2. Use "Deploy from Git" option
3. Configure manually using the settings from `render.yaml`

### 4. Environment Variables

Make sure these are set in Render:
```
APP_ENV=production
APP_DEBUG=false
APP_KEY=base64:rPuoSYmmc3nw8VyCCJn1k3B/1LjbOXscil3PXeI57sM=
DB_CONNECTION=pgsql
DB_HOST=dpg-d5tq7mili9vc73a0lhe0-a
DB_PORT=5432
DB_DATABASE=tgne_jobs
DB_USERNAME=tgne_jobs_user
DB_PASSWORD=[YOUR_ACTUAL_PASSWORD]
```

### 5. Deployment Process

The deployment will automatically:
1. Install PHP dependencies
2. Copy production environment
3. Run database migrations
4. Seed demo data (if not already present)
5. Create storage links
6. Cache configurations
7. Start the application

### 6. Post-Deployment

After successful deployment:
- **Frontend**: `https://your-app-name.onrender.com`
- **Admin Panel**: `https://your-app-name.onrender.com/admin`
- **Admin Credentials**: 
  - Email: `admin@admin.com`
  - Password: `admin123`

### 7. Demo Data Included

Your deployment will include:
- ✅ 51 sample jobs
- ✅ 13 companies with logos
- ✅ 10 job categories
- ✅ Blog posts and pages
- ✅ Testimonials and team members
- ✅ FAQs and contact forms
- ✅ All media files and images
- ✅ Complete navigation menus
- ✅ Admin user account

## 🔧 Troubleshooting

### Database Connection Issues
- Verify PostgreSQL credentials
- Check if database is in same region
- Ensure IP restrictions allow Render

### Missing Demo Data
- Check deployment logs for seeding errors
- Manually run: `php artisan db:seed --class=ProductionDataSeeder`

### Media Files Not Loading
- Verify storage link: `php artisan storage:link`
- Check file permissions

## 📝 Notes

- Database expires: February 28, 2026
- Free tier limitations apply
- Consider upgrading for production use
- All demo data will persist across deployments