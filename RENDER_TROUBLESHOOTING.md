# Render Deployment Troubleshooting Guide

## 🚨 Composer Install Failed (Exit Code 2)

If you're seeing composer install failures, try these solutions:

### Solution 1: Use Updated render.yaml (Recommended)
The updated `render.yaml` includes:
- Memory limit increase for composer
- Platform requirement ignoring
- Better error handling
- Fallback installation methods

**Action:** Redeploy using the updated `render.yaml` from your latest commit.

### Solution 2: Use Docker Deployment (Alternative)
If the native PHP environment continues to fail:

1. **Rename files:**
   ```bash
   mv render.yaml render-native.yaml
   mv render-docker.yaml render.yaml
   ```

2. **Commit and push:**
   ```bash
   git add .
   git commit -m "Switch to Docker deployment"
   git push origin main
   ```

3. **Redeploy on Render** - it will automatically use Docker

### Solution 3: Manual Environment Setup
If both methods fail, you can manually configure:

1. **Create Web Service** with these settings:
   - Environment: Docker
   - Build Command: `docker build -f Dockerfile.render -t jobbox .`
   - Start Command: `docker run -p $PORT:80 jobbox`

## 🔧 Common Issues and Fixes

### Issue: "Database not found"
**Fix:** Ensure both database files are in repository:
```bash
ls -la database/
# Should show: database.sqlite and production_database.sqlite
```

### Issue: "Storage link failed"
**Fix:** This is normal during build. The start command will create it.

### Issue: "Permission denied"
**Fix:** The scripts handle permissions automatically. If issues persist, check logs.

### Issue: "Memory limit exceeded"
**Fix:** The updated config sets `COMPOSER_MEMORY_LIMIT=-1`

## 📊 Verify Deployment Success

After successful deployment, check:

1. **App loads:** Visit your Render URL
2. **Demo data present:** Login with `admin@jobbox.com` / `password`
3. **Images working:** Check company logos and job images
4. **Database populated:** Should see 64 accounts, 13 companies, 51 jobs

## 🆘 If All Else Fails

1. **Check Render logs** for specific error messages
2. **Try the Docker approach** (Solution 2 above)
3. **Contact support** with the specific error from logs

## 📁 Files for Different Deployment Methods

- `render.yaml` - Native PHP (improved)
- `render-docker.yaml` - Docker alternative
- `Dockerfile.render` - Docker configuration
- `build.sh` - Build script with error handling
- `start.sh` - Startup script

Your demo data (64 accounts, 13 companies, 51 jobs) and all images are preserved in all deployment methods!