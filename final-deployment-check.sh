#!/bin/bash

echo "=== FINAL DEPLOYMENT VERIFICATION ==="

errors=0

# Check critical files
echo "Checking critical files..."
files=(
    "Dockerfile.simple"
    "render-simple.yaml" 
    "docker-entrypoint.sh"
    ".docker/vhost.conf"
    ".env.example"
    "database/production_database.sqlite"
    "composer.json"
    "composer.lock"
    ".dockerignore"
    "public/health.php"
)

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "✅ $file"
    else
        echo "❌ Missing: $file"
        ((errors++))
    fi
done

# Check for problematic .env file
if [ -f ".env" ]; then
    if grep -q "APP_ENV=local" .env; then
        echo "⚠️ WARNING: .env has development settings (will be overridden in Docker)"
    fi
fi

# Check database content
if [ -f "database/production_database.sqlite" ]; then
    size=$(stat -f%z "database/production_database.sqlite" 2>/dev/null || stat -c%s "database/production_database.sqlite" 2>/dev/null || echo "0")
    if [ "$size" -gt 1000000 ]; then
        echo "✅ Database size: ${size} bytes (good)"
    else
        echo "❌ Database too small: ${size} bytes"
        ((errors++))
    fi
fi

# Check storage directories
echo "Checking storage directories..."
storage_dirs=("banners" "companies" "categories" "logos" "general")
for dir in "${storage_dirs[@]}"; do
    if [ -d "storage/$dir" ] && [ "$(ls -A storage/$dir 2>/dev/null)" ]; then
        count=$(ls -1 storage/$dir | wc -l)
        echo "✅ storage/$dir: $count files"
    else
        echo "⚠️ Empty or missing: storage/$dir"
    fi
done

# Check Docker configuration
echo "Checking Docker configuration..."
if grep -q "php:8.3-apache" Dockerfile.simple; then
    echo "✅ PHP 8.3 Apache base image"
else
    echo "❌ Wrong base image"
    ((errors++))
fi

if grep -q "docker-php-ext-install.*zip.*calendar" Dockerfile.simple; then
    echo "✅ Required PHP extensions"
else
    echo "❌ Missing PHP extensions"
    ((errors++))
fi

if grep -q "HEALTHCHECK" Dockerfile.simple; then
    echo "✅ Health check configured"
else
    echo "❌ Missing health check"
    ((errors++))
fi

# Check render configuration
echo "Checking Render configuration..."
if grep -q "dockerfilePath: ./Dockerfile.simple" render-simple.yaml; then
    echo "✅ Correct Dockerfile path"
else
    echo "❌ Wrong Dockerfile path"
    ((errors++))
fi

if grep -q "LOG_CHANNEL.*stderr" render-simple.yaml; then
    echo "✅ Correct log channel"
else
    echo "❌ Wrong log channel"
    ((errors++))
fi

# Final result
echo ""
echo "=== FINAL RESULT ==="
if [ $errors -eq 0 ]; then
    echo "🚀 DEPLOYMENT READY!"
    echo "   All critical checks passed"
    echo ""
    echo "Next steps:"
    echo "1. mv render.yaml render-native.yaml"
    echo "2. mv render-simple.yaml render.yaml"
    echo "3. git add . && git commit -m 'Final deployment fixes'"
    echo "4. git push origin main"
    echo "5. Deploy on Render"
else
    echo "❌ $errors ERRORS FOUND"
    echo "   Fix errors before deployment"
fi