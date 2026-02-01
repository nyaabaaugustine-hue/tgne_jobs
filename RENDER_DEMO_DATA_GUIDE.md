# JobBox Render Deployment with Demo Data Preservation

## 🎯 Demo Data Included

Your deployment will include:
- **64 user accounts** (all confirmed, no verification needed)
- **13 companies** with logos and complete profiles
- **51 published jobs** ready for applications
- **151 media files** including all images
- **Complete image library** in storage/ and public/storage/

## 🚀 Deployment Steps

### 1. Prepare Repository
```bash
# Add all files including database and images
git add .
git commit -m "Deploy with demo data and images"
git push origin main
```

### 2. Create Render Service
1. Go to https://render.com
2. Click "New" → "Web Service"
3. Connect your GitHub repository
4. Use these settings:
   - **Name:** jobbox (or your choice)
   - **Environment:** PHP
   - **Build Command:** `./build.sh`
   - **Start Command:** `./start.sh`
   - **Auto-Deploy:** Yes

### 3. Environment Variables
Render will auto-configure from render.yaml, but verify:
- `APP_URL` matches your Render URL
- `DB_CONNECTION=sqlite`
- `DB_DATABASE=/opt/render/project/src/database/database.sqlite`

### 4. Verify Deployment
After deployment, check:
- Visit your app URL
- Login with demo accounts
- Verify images are loading
- Check that companies and jobs are visible

## 🔑 Demo Login Credentials

**Admin Panel:** `/admin`
- Username: `admin@jobbox.com`
- Password: `password`

**Test Accounts:**
- **Employer:** `employer@jobbox.com` / `password`
- **Job Seeker:** `candidate@jobbox.com` / `password`

## 📊 What's Preserved

### Database Content:
- All user accounts (confirmed and ready)
- Company profiles with logos
- Published jobs with details
- Categories and job types
- Application settings
- Media file references

### Images:
- Company logos
- Category icons
- Banner images
- User avatars
- Job-related images
- UI elements and backgrounds

## 🛠️ Troubleshooting

### If Demo Data is Missing:
1. Check build logs in Render dashboard
2. Run verification: `./verify_demo_data.sh`
3. Ensure `database/production_database.sqlite` is in repository

### If Images Don't Load:
1. Check storage link: `ls -la public/storage`
2. Verify permissions in build logs
3. Check that storage/ directories are in repository

### Common Issues:
- **Database not found:** Ensure both `database.sqlite` and `production_database.sqlite` are committed
- **Images missing:** Check that storage/ and public/storage/ directories are in git
- **Permissions:** Build script handles this automatically

## 🔒 Security Notes

**After deployment, immediately:**
1. Change admin password
2. Update default account passwords
3. Configure proper SMTP settings
4. Set up monitoring

## 📁 Files for Demo Data Preservation

- `database/database.sqlite` - Current database with demo data
- `database/production_database.sqlite` - Backup database
- `storage/*/` - All image source files
- `public/storage/*/` - Web-accessible images
- `build.sh` - Build script with data preservation
- `start.sh` - Start script with data verification
- `render.yaml` - Render configuration
- `verify_demo_data.sh` - Data verification script

Your demo data and images are fully preserved and will be available immediately after deployment!
