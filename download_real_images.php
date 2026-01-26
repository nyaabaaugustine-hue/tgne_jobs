<?php
// Download real images from the demo site to local storage

$baseUrl = 'https://jobbox.archielite.com/storage';

// Define the images to download with their destination paths
$imagesToDownload = [
    // Pages images
    'pages/banner1.png' => 'storage/app/public/pages/banner1.png',
    'pages/banner2.png' => 'storage/app/public/pages/banner2.png',
    'pages/icon-top-banner.png' => 'storage/app/public/pages/icon-top-banner.png',
    'pages/icon-bottom-banner.png' => 'storage/app/public/pages/icon-bottom-banner.png',
    'pages/bg-left-hiring.png' => 'storage/app/public/pages/bg-left-hiring.png',
    'pages/bg-right-hiring.png' => 'storage/app/public/pages/bg-right-hiring.png',
    'pages/img-chart.png' => 'storage/app/public/pages/img-chart.png',
    'pages/controlcard.png' => 'storage/app/public/pages/controlcard.png',
    'pages/img1.png' => 'storage/app/public/pages/img1.png',
    'pages/background-cover-candidate.png' => 'storage/app/public/pages/background-cover-candidate.png',
    
    // Company logos
    'companies/1.png' => 'storage/app/public/companies/tech-logo.png',
    'companies/2.png' => 'storage/app/public/companies/square-logo.png',
    'companies/3.png' => 'storage/app/public/companies/bing-logo.png',
    'companies/4.png' => 'storage/app/public/companies/dailymotion-logo.png',
    'companies/5.png' => 'storage/app/public/companies/toyota-logo.png',
    'companies/6.png' => 'storage/app/public/companies/ondo-logo.png',
    'companies/7.png' => 'storage/app/public/companies/greenwood-logo.png',
    'companies/8.png' => 'storage/app/public/companies/periscope-logo.png',
    'companies/9.png' => 'storage/app/public/companies/powerhome-logo.png',
    'companies/10.png' => 'storage/app/public/companies/nintendo-logo.png',
    
    // General images
    'general/logo.png' => 'storage/app/public/general/logo.png',
    'general/logo-light.png' => 'storage/app/public/general/logo-light.png',
    'general/favicon.png' => 'storage/app/public/general/favicon.png',
    'general/cover-image.png' => 'storage/app/public/general/cover-image.png',
    'general/404.png' => 'storage/app/public/general/404.png',
    'general/company-image.png' => 'storage/app/public/general/company-image.png',
    
    // Authentication images
    'authentication/img-1.png' => 'storage/app/public/authentication/img-1.png',
    'authentication/img-2.png' => 'storage/app/public/authentication/img-2.png',
    
    // Newsletter images
    'newsletter/background.png' => 'storage/app/public/newsletter/background.png',
    'newsletter/image-left.png' => 'storage/app/public/newsletter/image-left.png',
    'newsletter/image-right.png' => 'storage/app/public/newsletter/image-right.png',
    
    // Our partners images
    'our-partners/asus.png' => 'storage/app/public/our-partners/asus.png',
    'our-partners/dell.png' => 'storage/app/public/our-partners/dell.png',
    'our-partners/microsoft.png' => 'storage/app/public/our-partners/microsoft.png',
    'our-partners/acer.png' => 'storage/app/public/our-partners/acer.png',
    'our-partners/nokia.png' => 'storage/app/public/our-partners/nokia.png',
    
    // Social images
    'socials/facebook.png' => 'storage/app/public/socials/facebook.png',
    'socials/twitter.png' => 'storage/app/public/socials/twitter.png',
    'socials/linkedin.png' => 'storage/app/public/socials/linkedin.png',
    
    // Avatars
    'avatars/user1.png' => 'storage/app/public/avatars/user1.png',
    'avatars/user2.png' => 'storage/app/public/avatars/user2.png',
    'avatars/user3.png' => 'storage/app/public/avatars/user3.png',
    'avatars/user4.png' => 'storage/app/public/avatars/user4.png',
    'avatars/user5.png' => 'storage/app/public/avatars/user5.png',
    
    // Covers
    'covers/cover1.png' => 'storage/app/public/covers/cover1.png',
    'covers/cover2.png' => 'storage/app/public/covers/cover2.png',
    'covers/cover3.png' => 'storage/app/public/covers/cover3.png',
    
    // Jobs
    'jobs/1.png' => 'storage/app/public/jobs/1.png',
    'jobs/2.png' => 'storage/app/public/jobs/2.png',
    'jobs/3.png' => 'storage/app/public/jobs/3.png',
    'jobs/4.png' => 'storage/app/public/jobs/4.png',
    
    // Job categories
    'job-categories/1.png' => 'storage/app/public/job-categories/1.png',
    'job-categories/2.png' => 'storage/app/public/job-categories/2.png',
    'job-categories/3.png' => 'storage/app/public/job-categories/3.png',
    'job-categories/4.png' => 'storage/app/public/job-categories/4.png',
    'job-categories/5.png' => 'storage/app/public/job-categories/5.png',
    
    // Galleries
    'galleries/1.jpg' => 'storage/app/public/galleries/1.jpg',
    'galleries/2.jpg' => 'storage/app/public/galleries/2.jpg',
    'galleries/3.jpg' => 'storage/app/public/galleries/3.jpg',
    'galleries/4.jpg' => 'storage/app/public/galleries/4.jpg',
    'galleries/5.jpg' => 'storage/app/public/galleries/5.jpg',
    
    // Media
    'media/backgrounds/cover-image.png' => 'storage/app/public/media/backgrounds/cover-image.png',
    'media/banners/category/banner-3.jpg' => 'storage/app/public/media/banners/category/banner-3.jpg',
];

foreach ($imagesToDownload as $remotePath => $localPath) {
    $remoteUrl = $baseUrl . '/' . $remotePath;
    $localDir = dirname($localPath);
    
    // Create directory if it doesn't exist
    if (!file_exists($localDir)) {
        mkdir($localDir, 0755, true);
    }
    
    // Attempt to download the image
    $imageData = @file_get_contents($remoteUrl);
    
    if ($imageData !== false) {
        file_put_contents($localPath, $imageData);
        echo "Downloaded: $remotePath -> $localPath\n";
    } else {
        echo "Failed to download: $remotePath\n";
        
        // Create a placeholder image as fallback
        $img = imagecreate(400, 300);
        $bg = imagecolorallocate($img, 200, 200, 200); // Light gray background
        $textColor = imagecolorallocate($img, 100, 100, 100); // Dark gray text
        
        // Add text indicating it's a placeholder
        $text = basename($localPath, '.png');
        $font = 5;
        $textWidth = imagefontwidth($font) * strlen($text);
        $x = (imagesx($img) - $textWidth) / 2;
        $y = (imagesy($img) - imagefontheight($font)) / 2;
        
        imagestring($img, $font, $x, $y, $text, $textColor);
        
        // Save as PNG
        imagepng($img, $localPath);
        imagedestroy($img);
        
        echo "Created placeholder: $localPath\n";
    }
}

echo "\nAll images processed!\n";