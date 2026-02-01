<?php
// Fix image persistence by configuring cloud storage
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

echo "=== FIXING IMAGE PERSISTENCE ===\n\n";

try {
    // Step 1: Backup current media URLs
    echo "1. 💾 Backing up current media file URLs...\n";
    if (Schema::hasTable('media_files')) {
        $mediaFiles = DB::table('media_files')->get();
        $backupData = [];
        
        foreach ($mediaFiles as $media) {
            $backupData[] = [
                'id' => $media->id,
                'name' => $media->name,
                'url' => $media->url,
                'folder_id' => $media->folder_id ?? null
            ];
        }
        
        file_put_contents('media_backup_' . date('Y-m-d_H-i-s') . '.json', json_encode($backupData, JSON_PRETTY_PRINT));
        echo "   ✅ Backed up " . count($backupData) . " media file records\n";
    }
    
    // Step 2: Create placeholder images for missing files
    echo "2. 🖼️ Creating placeholder images for missing files...\n";
    $placeholderCreated = 0;
    
    if (Schema::hasTable('media_files')) {
        foreach ($mediaFiles as $media) {
            $storagePath = storage_path('app/public/' . str_replace('storage/', '', $media->url));
            $publicPath = public_path($media->url);
            
            // If file doesn't exist, create a placeholder
            if (!file_exists($storagePath) && !file_exists($publicPath)) {
                $dir = dirname($storagePath);
                if (!is_dir($dir)) {
                    mkdir($dir, 0755, true);
                }
                
                // Create a simple placeholder image
                if (extension_loaded('gd')) {
                    $img = imagecreate(400, 300);
                    $bg = imagecolorallocate($img, 240, 240, 240);
                    $text_color = imagecolorallocate($img, 100, 100, 100);
                    
                    imagestring($img, 5, 120, 140, 'Image Missing', $text_color);
                    imagestring($img, 3, 140, 160, $media->name, $text_color);
                    
                    $extension = pathinfo($media->url, PATHINFO_EXTENSION);
                    if (in_array(strtolower($extension), ['jpg', 'jpeg'])) {
                        imagejpeg($img, $storagePath);
                    } else {
                        imagepng($img, $storagePath);
                    }
                    
                    imagedestroy($img);
                    $placeholderCreated++;
                }
            }
        }
    }
    
    echo "   ✅ Created $placeholderCreated placeholder images\n";
    
    // Step 3: Fix media URLs to use correct storage path
    echo "3. 🔧 Fixing media file URLs...\n";
    $urlsFixed = 0;
    
    if (Schema::hasTable('media_files')) {
        foreach ($mediaFiles as $media) {
            $oldUrl = $media->url;
            $newUrl = $oldUrl;
            
            // Ensure URL starts with storage/
            if (!str_starts_with($oldUrl, 'storage/') && !str_starts_with($oldUrl, 'http')) {
                $newUrl = 'storage/' . ltrim($oldUrl, '/');
                
                DB::table('media_files')->where('id', $media->id)->update([
                    'url' => $newUrl,
                    'updated_at' => now()
                ]);
                
                $urlsFixed++;
            }
        }
    }
    
    echo "   ✅ Fixed $urlsFixed media URLs\n";
    
    // Step 4: Ensure storage link exists
    echo "4. 🔗 Ensuring storage link exists...\n";
    try {
        if (!file_exists(public_path('storage'))) {
            Artisan::call('storage:link');
            echo "   ✅ Storage link created\n";
        } else {
            echo "   ✅ Storage link already exists\n";
        }
    } catch (Exception $e) {
        echo "   ⚠️ Storage link issue: " . $e->getMessage() . "\n";
    }
    
    // Step 5: Create .gitkeep files to preserve directory structure
    echo "5. 📁 Creating .gitkeep files for directory preservation...\n";
    $storageSubdirs = [
        'banners', 'blog', 'categories', 'companies', 
        'galleries', 'general', 'icons', 'logos', 
        'pages', 'team', 'testimonials', 'avatars', 'resume'
    ];
    
    $gitkeepCreated = 0;
    foreach ($storageSubdirs as $subdir) {
        $dir = storage_path("app/public/$subdir");
        if (!is_dir($dir)) {
            mkdir($dir, 0755, true);
        }
        
        $gitkeepFile = $dir . '/.gitkeep';
        if (!file_exists($gitkeepFile)) {
            file_put_contents($gitkeepFile, '');
            $gitkeepCreated++;
        }
    }
    
    echo "   ✅ Created $gitkeepCreated .gitkeep files\n";
    
    // Step 6: Clear caches
    echo "6. 🧹 Clearing caches...\n";
    try {
        Artisan::call('cache:clear');
        Artisan::call('config:clear');
        Artisan::call('view:clear');
        echo "   ✅ Caches cleared\n";
    } catch (Exception $e) {
        echo "   ⚠️ Cache clear issue: " . $e->getMessage() . "\n";
    }
    
    // Step 7: Show final statistics
    echo "\n📊 FINAL STATISTICS:\n";
    if (Schema::hasTable('media_files')) {
        $totalMedia = DB::table('media_files')->count();
        $storageMedia = DB::table('media_files')->where('url', 'like', 'storage/%')->count();
        
        echo "Total media files: $totalMedia\n";
        echo "Correct storage URLs: $storageMedia\n";
        echo "Placeholder images created: $placeholderCreated\n";
        echo "URLs fixed: $urlsFixed\n";
    }
    
    // Step 8: Recommendations for permanent fix
    echo "\n💡 PERMANENT SOLUTION NEEDED:\n";
    echo "This is a temporary fix. For production, you need:\n";
    echo "1. Configure cloud storage (AWS S3, Cloudinary, etc.)\n";
    echo "2. Update config/filesystems.php to use cloud disk\n";
    echo "3. Migrate images to cloud storage\n";
    echo "4. Update FILESYSTEM_DISK=s3 in environment variables\n\n";
    
    echo "🔧 NEXT STEPS:\n";
    echo "1. Add cloud storage credentials to Render environment\n";
    echo "2. Update filesystem configuration\n";
    echo "3. Run image migration to cloud\n";
    echo "4. Test image persistence after redeployment\n";
    
} catch (Exception $e) {
    echo "❌ ERROR: " . $e->getMessage() . "\n";
    echo "Stack trace:\n" . $e->getTraceAsString() . "\n";
}

echo "\n=== FIX COMPLETE ===\n";
?>