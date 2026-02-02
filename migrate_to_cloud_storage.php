<?php
// Migrate existing images to cloud storage
// Run this AFTER setting up cloud storage configuration

require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

echo "=== CLOUD STORAGE MIGRATION ===\n\n";

try {
    // Check if cloud storage is configured
    $defaultDisk = config('filesystems.default');
    echo "Current filesystem disk: $defaultDisk\n";
    
    if ($defaultDisk === 'local' || $defaultDisk === 'public') {
        echo "❌ ERROR: Cloud storage not configured!\n";
        echo "Please set FILESYSTEM_DISK environment variable to 'cloudinary' or 's3'\n";
        echo "And configure the appropriate credentials.\n\n";
        echo "See CLOUD_STORAGE_SETUP.md for instructions.\n";
        exit(1);
    }
    
    // Test cloud storage connection
    echo "Testing cloud storage connection...\n";
    try {
        Storage::disk($defaultDisk)->put('test.txt', 'test content');
        $testUrl = Storage::disk($defaultDisk)->url('test.txt');
        echo "✅ Cloud storage working! Test file: $testUrl\n";
        Storage::disk($defaultDisk)->delete('test.txt');
    } catch (Exception $e) {
        echo "❌ Cloud storage connection failed: " . $e->getMessage() . "\n";
        exit(1);
    }
    
    if (!Schema::hasTable('media_files')) {
        echo "❌ No media_files table found\n";
        exit(1);
    }
    
    // Get all media files
    $mediaFiles = DB::table('media_files')->get();
    $totalFiles = $mediaFiles->count();
    echo "\nFound $totalFiles media files to migrate\n\n";
    
    $migrated = 0;
    $skipped = 0;
    $errors = 0;
    
    foreach ($mediaFiles as $media) {
        echo "Processing: {$media->name}... ";
        
        // Skip if already using cloud URL
        if (str_starts_with($media->url, 'http')) {
            echo "SKIPPED (already cloud URL)\n";
            $skipped++;
            continue;
        }
        
        // Find the local file
        $localPath = null;
        $possiblePaths = [
            public_path($media->url),
            storage_path('app/public/' . str_replace('storage/', '', $media->url)),
            public_path('storage/' . str_replace('storage/', '', $media->url))
        ];
        
        foreach ($possiblePaths as $path) {
            if (file_exists($path)) {
                $localPath = $path;
                break;
            }
        }
        
        if (!$localPath) {
            echo "ERROR (file not found)\n";
            $errors++;
            continue;
        }
        
        try {
            // Generate cloud storage path
            $extension = pathinfo($media->name, PATHINFO_EXTENSION);
            $folder = $media->folder_id ? "folder_{$media->folder_id}" : 'general';
            $cloudPath = "$folder/" . uniqid() . "_" . $media->name;
            
            // Upload to cloud storage
            $fileContents = file_get_contents($localPath);
            $uploaded = Storage::disk($defaultDisk)->put($cloudPath, $fileContents);
            
            if ($uploaded) {
                // Get the cloud URL
                $cloudUrl = Storage::disk($defaultDisk)->url($cloudPath);
                
                // Update database
                DB::table('media_files')->where('id', $media->id)->update([
                    'url' => $cloudUrl,
                    'updated_at' => now()
                ]);
                
                echo "SUCCESS -> $cloudUrl\n";
                $migrated++;
            } else {
                echo "ERROR (upload failed)\n";
                $errors++;
            }
            
        } catch (Exception $e) {
            echo "ERROR (" . $e->getMessage() . ")\n";
            $errors++;
        }
    }
    
    echo "\n=== MIGRATION COMPLETE ===\n";
    echo "✅ Migrated: $migrated files\n";
    echo "⏭️ Skipped: $skipped files\n";
    echo "❌ Errors: $errors files\n";
    
    if ($migrated > 0) {
        echo "\n🎉 SUCCESS! Images are now stored in cloud storage.\n";
        echo "They will persist through redeployments.\n\n";
        
        echo "🧹 Cleaning up caches...\n";
        Artisan::call('cache:clear');
        Artisan::call('config:clear');
        Artisan::call('view:clear');
        echo "✅ Caches cleared\n";
    }
    
    if ($errors > 0) {
        echo "\n⚠️ Some files had errors. You may need to re-upload them manually.\n";
    }
    
} catch (Exception $e) {
    echo "❌ FATAL ERROR: " . $e->getMessage() . "\n";
}

echo "\n=== END MIGRATION ===\n";
?>