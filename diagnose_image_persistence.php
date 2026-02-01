<?php
// Diagnose image persistence issues on redeployment
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

echo "=== IMAGE PERSISTENCE DIAGNOSTIC ===\n\n";

try {
    // Check where images are stored
    echo "📁 STORAGE LOCATIONS:\n";
    echo "Storage path: " . storage_path('app/public') . "\n";
    echo "Public storage: " . public_path('storage') . "\n";
    echo "Upload path: " . config('filesystems.disks.public.root', 'N/A') . "\n\n";
    
    // Check filesystem configuration
    echo "💾 FILESYSTEM CONFIG:\n";
    echo "Default disk: " . config('filesystems.default') . "\n";
    echo "Public disk driver: " . config('filesystems.disks.public.driver') . "\n";
    echo "Public disk root: " . config('filesystems.disks.public.root') . "\n";
    echo "Public disk URL: " . config('filesystems.disks.public.url') . "\n\n";
    
    // Check media files in database vs actual files
    echo "🖼️ MEDIA FILES ANALYSIS:\n";
    if (Schema::hasTable('media_files')) {
        $mediaFiles = DB::table('media_files')->get();
        $totalFiles = $mediaFiles->count();
        $existingFiles = 0;
        $missingFiles = 0;
        $brokenUrls = 0;
        
        echo "Total media files in DB: $totalFiles\n";
        
        foreach ($mediaFiles as $media) {
            $fullPath = public_path($media->url);
            $storagePath = storage_path('app/public/' . str_replace('storage/', '', $media->url));
            
            if (file_exists($fullPath) || file_exists($storagePath)) {
                $existingFiles++;
            } else {
                $missingFiles++;
            }
            
            if (!str_starts_with($media->url, 'storage/') && !str_starts_with($media->url, 'http')) {
                $brokenUrls++;
            }
        }
        
        echo "Files that exist: $existingFiles\n";
        echo "Missing files: $missingFiles\n";
        echo "Broken URLs: $brokenUrls\n\n";
        
        // Show sample missing files
        if ($missingFiles > 0) {
            echo "📋 SAMPLE MISSING FILES:\n";
            $count = 0;
            foreach ($mediaFiles as $media) {
                if ($count >= 5) break;
                
                $fullPath = public_path($media->url);
                $storagePath = storage_path('app/public/' . str_replace('storage/', '', $media->url));
                
                if (!file_exists($fullPath) && !file_exists($storagePath)) {
                    echo "❌ {$media->name} -> {$media->url}\n";
                    echo "   Expected at: $fullPath\n";
                    echo "   Or at: $storagePath\n";
                    $count++;
                }
            }
            echo "\n";
        }
    }
    
    // Check storage directories
    echo "📂 STORAGE DIRECTORY STATUS:\n";
    $storageSubdirs = [
        'banners', 'blog', 'categories', 'companies', 
        'galleries', 'general', 'icons', 'logos', 
        'pages', 'team', 'testimonials', 'avatars'
    ];
    
    foreach ($storageSubdirs as $subdir) {
        $storagePath = storage_path("app/public/$subdir");
        $publicPath = public_path("storage/$subdir");
        
        $storageExists = is_dir($storagePath);
        $publicExists = is_dir($publicPath);
        $storageCount = $storageExists ? count(glob($storagePath . "/*")) : 0;
        $publicCount = $publicExists ? count(glob($publicPath . "/*")) : 0;
        
        $status = $storageExists ? "✅" : "❌";
        $linkStatus = $publicExists ? "✅" : "❌";
        
        echo "$status $subdir/ (storage: $storageCount files) -> $linkStatus public: $publicCount files\n";
    }
    
    // Check if storage is ephemeral (container-based)
    echo "\n🔍 DEPLOYMENT ENVIRONMENT:\n";
    echo "Environment: " . config('app.env') . "\n";
    echo "URL: " . config('app.url') . "\n";
    
    // Check for cloud storage configuration
    echo "\n☁️ CLOUD STORAGE CHECK:\n";
    $cloudDisks = ['s3', 'gcs', 'azure', 'cloudinary'];
    foreach ($cloudDisks as $disk) {
        if (config("filesystems.disks.$disk")) {
            echo "✅ $disk configured\n";
        } else {
            echo "❌ $disk not configured\n";
        }
    }
    
    // Recommendations
    echo "\n💡 DIAGNOSIS:\n";
    if ($missingFiles > ($totalFiles * 0.5)) {
        echo "🚨 CRITICAL: Most images are missing after deployment!\n";
        echo "   This indicates ephemeral storage (container resets).\n";
        echo "   SOLUTION: Configure persistent cloud storage.\n\n";
    }
    
    echo "📋 RECOMMENDED FIXES:\n";
    echo "1. Configure cloud storage (S3, Cloudinary, etc.)\n";
    echo "2. Update filesystem config to use cloud disk\n";
    echo "3. Migrate existing images to cloud storage\n";
    echo "4. Update media URLs to use cloud URLs\n";
    
} catch (Exception $e) {
    echo "❌ ERROR: " . $e->getMessage() . "\n";
}

echo "\n=== END DIAGNOSTIC ===\n";
?>