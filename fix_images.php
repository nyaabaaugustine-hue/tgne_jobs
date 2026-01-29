<?php
require 'vendor/autoload.php';
$app = require 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Artisan;

echo "=== Fixing Image Issue ===\n";

// 1. Check if storage link exists
if (!is_link('public/storage')) {
    echo "Creating storage link...\n";
    Artisan::call('storage:link');
    echo "Storage link created.\n";
} else {
    echo "Storage link already exists.\n";
}

// 2. Check if storage directory exists
if (!is_dir('storage/app/public')) {
    echo "Creating storage directory...\n";
    mkdir('storage/app/public', 0755, true);
    echo "Storage directory created.\n";
} else {
    echo "Storage directory exists.\n";
}

// 3. Check media files in database
$count = DB::table('media_files')->count();
echo "Media files in database: $count\n";

if ($count == 0) {
    echo "No media files found in database. Images may not be saved properly.\n";
} else {
    // 4. Check if images exist in storage
    $files = glob('storage/app/public/*.{jpg,jpeg,png,gif,webp}', GLOB_BRACE);
    $imageCount = count($files);
    echo "Images in storage: $imageCount\n";
    
    if ($imageCount == 0) {
        echo "No images found in storage. This is the issue!\n";
        echo "Possible causes:\n";
        echo "1. Images were not uploaded/saved correctly\n";
        echo "2. Storage path is incorrect in database\n";
        echo "3. File permissions issue\n";
        
        // Try to find images in other locations
        echo "\nChecking other possible locations:\n";
        $possiblePaths = [
            'storage/app/uploads',
            'public/uploads',
            'uploads',
            'images'
        ];
        
        foreach ($possiblePaths as $path) {
            if (is_dir($path)) {
                $files = glob("$path/*.{jpg,jpeg,png,gif,webp}", GLOB_BRACE);
                if (count($files) > 0) {
                    echo "Found images in $path: " . count($files) . " files\n";
                    // Move them to correct location
                    foreach ($files as $file) {
                        $filename = basename($file);
                        if (copy($file, "storage/app/public/$filename")) {
                            echo "  Copied $filename to storage/app/public/\n";
                        }
                    }
                }
            }
        }
    } else {
        echo "Images found in storage. Issue might be with the storage link or database references.\n";
        
        // Check first few images
        echo "Sample images:\n";
        for ($i = 0; $i < min(5, $imageCount); $i++) {
            echo "  - " . basename($files[$i]) . "\n";
        }
    }
}

// 5. Clear all caches
echo "\nClearing caches...\n";
Artisan::call('cache:clear');
Artisan::call('config:clear');
Artisan::call('route:clear');
Artisan::call('view:clear');

echo "=== Image Fix Complete ===\n";