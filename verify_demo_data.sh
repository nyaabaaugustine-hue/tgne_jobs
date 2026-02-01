#!/bin/bash

echo "=== Demo Data Verification ==="

# Check database
if [ -f database/database.sqlite ]; then
    echo "✓ Database file exists"
    
    # Check data counts
    ACCOUNTS=$(php artisan tinker --execute="echo DB::table('jb_accounts')->count();")
    COMPANIES=$(php artisan tinker --execute="echo DB::table('jb_companies')->count();")
    JOBS=$(php artisan tinker --execute="echo DB::table('jb_jobs')->count();")
    IMAGES=$(php artisan tinker --execute="echo DB::table('media_files')->where('mime_type', 'like', 'image/%')->count();")
    
    echo "Demo Data Summary:"
    echo "- Accounts: $ACCOUNTS"
    echo "- Companies: $COMPANIES"
    echo "- Jobs: $JOBS"
    echo "- Images: $IMAGES"
    
    if [ $ACCOUNTS -gt 0 ] && [ $COMPANIES -gt 0 ] && [ $JOBS -gt 0 ]; then
        echo "✅ All demo data is present!"
    else
        echo "⚠️  Some demo data may be missing"
    fi
else
    echo "❌ Database file not found!"
fi

# Check storage images
STORAGE_IMAGES=$(find storage -name "*.jpg" -o -name "*.png" -o -name "*.gif" | wc -l)
PUBLIC_IMAGES=$(find public/storage -name "*.jpg" -o -name "*.png" -o -name "*.gif" 2>/dev/null | wc -l)

echo "Image Files:"
echo "- Storage: $STORAGE_IMAGES"
echo "- Public: $PUBLIC_IMAGES"

if [ $STORAGE_IMAGES -gt 0 ] && [ $PUBLIC_IMAGES -gt 0 ]; then
    echo "✅ All images are present!"
else
    echo "⚠️  Some images may be missing"
fi

echo "=== Verification Complete ==="
