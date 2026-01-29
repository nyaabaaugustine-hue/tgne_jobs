<?php
// Create storage directory
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

// Create storage link
if (!is_link('public/storage') && is_dir('storage/app/public')) {
    if (symlink(realpath('storage/app/public'), 'public/storage')) {
        echo "Storage link created\n";
    } else {
        echo "Failed to create storage link\n";
    }
} else {
    echo "Storage link already exists or storage directory missing\n";
}

echo "Done\n";