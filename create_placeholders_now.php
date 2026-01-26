<?php
// Create placeholder images for JobBox

$imagePaths = [
    'storage/app/public/pages/banner1.png',
    'storage/app/public/pages/icon-top-banner.png',
    'storage/app/public/pages/banner2.png',
    'storage/app/public/pages/icon-bottom-banner.png',
    'storage/app/public/pages/bg-left-hiring.png',
    'storage/app/public/pages/bg-right-hiring.png',
    'storage/app/public/pages/img-chart.png',
    'storage/app/public/pages/controlcard.png',
    'storage/app/public/pages/img1.png'
];

foreach ($imagePaths as $path) {
    // Create directory if it doesn't exist
    $dir = dirname($path);
    if (!file_exists($dir)) {
        mkdir($dir, 0755, true);
    }
    
    // Create a simple image
    $img = imagecreate(800, 400);
    $bg = imagecolorallocate($img, 200, 200, 200); // Light gray background
    $textColor = imagecolorallocate($img, 100, 100, 100); // Dark gray text
    
    // Get the filename without extension for the text
    $filename = basename($path, '.png');
    
    // Add text to the image
    $font = 5; // Built-in font
    $textWidth = imagefontwidth($font) * strlen($filename);
    $x = (imagesx($img) - $textWidth) / 2;
    $y = (imagesy($img) - imagefontheight($font)) / 2;
    
    imagestring($img, $font, $x, $y, $filename, $textColor);
    
    // Save the image
    imagepng($img, $path);
    imagedestroy($img);
    
    echo "Created: $path\n";
}

echo "All placeholder images created successfully!\n";