# Render Deployment Troubleshooting Guide

## 🚨 Missing PHP Extensions (ext-zip, ext-calendar)

If you're seeing missing extension errors, here are the solutions:

### Solution 1: Use Simple Docker Deployment (Recommended)
The `Dockerfile.simple` includes all required PHP extensions:

1. **Switch to simple Docker:**
   ```bash
   mv render.yaml render-native.yaml
   mv render-simple.yaml render.yaml
   ```

2. **Commit and push:**
   ```bash
   git add .
   git commit -m "Switch to simple Docker deployment with all PHP extensions"
   git push origin main
   ```

3. **Redeploy on Render** - it will use the improved Docker setup

### Solution 2: Use Updated Native PHP (Alternative)
The updated `render.yaml` ignores platform requirements:
- Uses `--ignore-platform-req=ext-zip --ignore-platform-req=ext-calendar`
- Falls back to ignoring all platform requirements if needed

### Solution 3: Manual Docker Build
If automated deployment fails:

1. **Use `Dockerfile.simple`** which includes:
   - All required PHP extensions (zip, calendar, gd, etc.)
   - Proper dependency installation order
   - Better layer caching

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

- `render.yaml` - Native PHP with platform requirement ignoring
- `render-simple.yaml` - Simple Docker with all extensions (recommended)
- `render-docker.yaml` - Advanced Docker alternative
- `Dockerfile.simple` - Simple Docker configuration with all PHP extensions
- `Dockerfile.render` - Advanced Docker configuration
- `build.sh` - Build script with error handling
- `start.sh` - Startup script

**Recommended:** Use `render-simple.yaml` → `render.yaml` for easiest deployment.

Your demo data (64 accounts, 13 companies, 51 jobs) and all images are preserved in all deployment methods!