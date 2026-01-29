<?php
// Create storage directory structure
if (!is_dir('storage')) {
    mkdir('storage', 0755, true);
}
if (!is_dir('storage/app')) {
    mkdir('storage/app', 0755, true);
}
if (!is_dir('storage/app/public')) {
    mkdir('storage/app/public', 0755, true);
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
    // On Windows, we need to create a junction or use a different approach
    // For now, we'll just copy the files to public/storage
    if (!is_dir('public/storage')) {
        mkdir('public/storage', 0755, true);
    }
    
    // Copy files from storage/app/public to public/storage
    $files = glob("storage/app/public/*.{jpg,jpeg,png,gif,webp}", GLOB_BRACE);
    foreach ($files as $file) {
        $filename = basename($file);
        $targetPath = "public/storage/$filename";
        
        if (copy($file, $targetPath)) {
            echo "  Copied $filename to public/storage/\n";
        } else {
            echo "  Failed to copy $filename to public/storage/\n";
        }
    }
    
    echo "Storage link created (as directory copy)\n";
} else {
    echo "Storage link already exists or storage directory missing\n";
}

echo "Done\n";