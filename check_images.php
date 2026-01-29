<?php
require 'vendor/autoload.php';
$app = require 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;

echo "=== Image Status Check ===\n";

// Check media files count
$count = DB::table('media_files')->count();
echo "Media files in database: $count\n";

// Check if storage link exists
$linkExists = is_link('public/storage');
echo "Storage link exists: " . ($linkExists ? 'Yes' : 'No') . "\n";

// Check if storage directory exists
$dirExists = is_dir('storage/app/public');
echo "Storage directory exists: " . ($dirExists ? 'Yes' : 'No') . "\n";

// Check if images exist in storage
$imageCount = 0;
if ($dirExists) {
    $files = glob('storage/app/public/*.{jpg,jpeg,png,gif,webp}', GLOB_BRACE);
    $imageCount = count($files);
    echo "Images in storage: $imageCount\n";
    
    if ($imageCount > 0) {
        echo "Sample images:\n";
        for ($i = 0; $i < min(5, $imageCount); $i++) {
            echo "  - " . basename($files[$i]) . "\n";
        }
    }
}

// Check if public/storage link points to correct directory
if ($linkExists) {
    $target = readlink('public/storage');
    echo "Storage link target: $target\n";
    $correctTarget = realpath('storage/app/public');
    echo "Expected target: $correctTarget\n";
    echo "Link is correct: " . ($target === $correctTarget ? 'Yes' : 'No') . "\n";
}

echo "=== End Check ===\n";