# JobBox Render Deployment Checklist

## Pre-Deployment Setup

### 1. Prepare Your Repository
- [ ] Push all code to GitHub/GitLab
- [ ] Ensure `database/database.sqlite` is included
- [ ] Verify all images are in `storage/` and `public/storage/`
- [ ] Check that `render.yaml` is in root directory

### 2. Render Dashboard Setup
1. Go to https://render.com and sign up/login
2. Click "New" → "Web Service"
3. Connect your GitHub/GitLab repository
4. Configure the service:

**Basic Settings:**
- Name: `jobbox` (or your preferred name)
- Environment: `PHP`
- Build Command: `./build.sh`
- Start Command: `./start.sh`

**Advanced Settings:**
- Auto-Deploy: `Yes`
- Branch: `main` (or your default branch)

### 3. Environment Variables
Add these in Render Dashboard → Environment:

```
APP_NAME=JobBox
APP_ENV=production
APP_DEBUG=false
APP_KEY=[Generate new key]
APP_URL=https://your-app-name.onrender.com
LOG_CHANNEL=errorlog
LOG_LEVEL=error
DB_CONNECTION=sqlite
DB_DATABASE=/opt/render/project/src/database/database.sqlite
CACHE_DRIVER=file
SESSION_DRIVER=file
QUEUE_CONNECTION=sync
MAIL_MAILER=smtp
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_ENCRYPTION=tls
MAIL_FROM_ADDRESS=noreply@your-app-name.onrender.com
MAIL_FROM_NAME=JobBox
CMS_LICENSE_VERIFY_DISABLE=true
CMS_LICENSE_ACTIVATED=true
```

### 4. Custom Domain (Optional)
- Add your custom domain in Render Dashboard
- Update APP_URL environment variable
- Configure DNS records

## Post-Deployment Verification

### 1. Check Application
- [ ] Visit your Render URL
- [ ] Test user registration/login
- [ ] Verify images are loading
- [ ] Test job posting/application

### 2. Admin Access
- [ ] Login to admin panel: `/admin`
- [ ] Username: `admin@jobbox.com`
- [ ] Password: `password`
- [ ] Change admin credentials immediately

### 3. Test Accounts
- [ ] Employer: `employer@jobbox.com` / `password`
- [ ] Job Seeker: `candidate@jobbox.com` / `password`

## Troubleshooting

### Common Issues:
1. **Images not loading**: Check storage link and permissions
2. **Database errors**: Verify SQLite file is uploaded
3. **500 errors**: Check logs in Render dashboard
4. **Email not working**: Configure SMTP settings

### Render-Specific:
- Build logs available in Render dashboard
- Application logs in "Logs" tab
- Environment variables in "Environment" tab
- Custom domains in "Settings" tab

## Security Notes:
- Change all default passwords immediately
- Set up proper SMTP for email notifications
- Consider adding SSL certificate (Render provides free SSL)
- Monitor application logs regularly

## Files Created:
- `render.yaml` - Render service configuration
- `build.sh` - Build script
- `start.sh` - Start script  
- `Dockerfile` - Alternative Docker deployment
- `.env.render` - Environment template
