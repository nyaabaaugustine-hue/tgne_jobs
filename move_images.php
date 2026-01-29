<?php
require 'vendor/autoload.php';
$app = require 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Artisan;

echo "=== Moving Images to Correct Location ===\n";

// Create storage directory if it doesn't exist
if (!is_dir('storage/app/public')) {
    mkdir('storage/app/public', 0755, true);
    echo "Created storage/app/public directory\n";
}

// Copy images from public/pages to storage/app/public
$sourceDir = 'public/pages';
$targetDir = 'storage/app/public';

if (is_dir($sourceDir)) {
    $files = glob("$sourceDir/*.{jpg,jpeg,png,gif,webp}", GLOB_BRACE);
    echo "Found " . count($files) . " images in $sourceDir\n";
    
    foreach ($files as $file) {
        $filename = basename($file);
        $targetPath = "$targetDir/$filename";
        
        if (copy($file, $targetPath)) {
            echo "  Copied $filename to storage/app/public/\n";
        } else {
            echo "  Failed to copy $filename\n";
        }
    }
} else {
    echo "Source directory $sourceDir does not exist\n";
}

// Create storage link if it doesn't exist
if (!is_link('public/storage')) {
    echo "Creating storage link...\n";
    Artisan::call('storage:link');
    echo "Storage link created.\n";
} else {
    echo "Storage link already exists.\n";
}

// Update database records to point to correct path
echo "Updating database records...\n";
$updated = DB::table('media_files')
    ->where('url', 'LIKE', 'pages/%')
    ->update(['url' => DB::raw("REPLACE(url, 'pages/', 'avatars/')")]);

echo "Updated $updated records in database\n";

// Clear all caches
echo "Clearing caches...\n";
Artisan::call('cache:clear');
Artisan::call('config:clear');
Artisan::call('route:clear');
Artisan::call('view:clear');

echo "=== Image Move Complete ===\n";