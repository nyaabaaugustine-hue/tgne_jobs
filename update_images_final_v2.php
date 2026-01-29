<?php
require 'vendor/autoload.php';
$app = require 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

echo "Starting image update process...\n";

// Clear existing media files
DB::table('media_files')->truncate();

// Update users with avatars
if (Schema::hasTable('users') && DB::table('users')->count() > 0) {
    echo "Updating users...\n";
    $users = DB::table('users')->get();
    $avatarImages = ['1.png', '2.png', '3.png', '8.png'];
    
    foreach ($users as $index => $user) {
        $image = $avatarImages[$index % count($avatarImages)];
        $mediaId = DB::table('media_files')->insertGetId([
            'url' => 'avatars/' . $image,
            'name' => $image,
            'mime_type' => 'image/png',
            'size' => 1000,
            'user_id' => 1,
            'folder_id' => 1,
            'visibility' => 'public',
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->where('id', $user->id)->update(['avatar_id' => $mediaId]);
        echo "Updated user {$user->id} with avatar: avatars/{$image}\n";
    }
}

// Update teams with photos
if (Schema::hasTable('teams') && DB::table('teams')->count() > 0) {
    echo "Updating teams...\n";
    $teams = DB::table('teams')->get();
    $teamImages = ['1.png', '2.png', '3.png', '4.png', '5.png', '6.png', '7.png', '8.png'];
    
    foreach ($teams as $index => $team) {
        $image = $teamImages[$index % count($teamImages)];
        DB::table('teams')->where('id', $team->id)->update(['photo' => 'teams/' . $image]);
        echo "Updated team {$team->id} with photo: teams/{$image}\n";
    }
}

// Update testimonials
if (Schema::hasTable('testimonials') && DB::table('testimonials')->count() > 0) {
    echo "Updating testimonials...\n";
    $testimonials = DB::table('testimonials')->get();
    $testimonialImages = ['1.png', '2.png', '3.png', '4.png'];
    
    foreach ($testimonials as $index => $testimonial) {
        $image = $testimonialImages[$index % count($testimonialImages)];
        DB::table('testimonials')->where('id', $testimonial->id)->update(['image' => 'testimonials/' . $image]);
        echo "Updated testimonial {$testimonial->id} with image: testimonials/{$image}\n";
    }
}

// Update galleries
if (Schema::hasTable('galleries') && DB::table('galleries')->count() > 0) {
    echo "Updating galleries...\n";
    $galleries = DB::table('galleries')->get();
    $galleryImages = ['1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', '6.jpg', '7.jpg', '8.jpg', '9.jpg', '10.jpg'];
    
    foreach ($galleries as $index => $gallery) {
        $image = $galleryImages[$index % count($galleryImages)];
        DB::table('galleries')->where('id', $gallery->id)->update(['image' => 'galleries/' . $image]);
        echo "Updated gallery {$gallery->id} with image: galleries/{$image}\n";
    }
}

// Update pages
if (Schema::hasTable('pages') && DB::table('pages')->count() > 0) {
    echo "Updating pages...\n";
    $pages = DB::table('pages')->get();
    $pageImages = [
        'background-breadcrumb.png', 'banner-section-search-box.png',
        'banner1.png', 'banner2.png', 'banner3.png', 'banner4.png',
        'banner5.png', 'banner6.png', 'bg-breadcrumb.png', 'bg-cat.png',
        'bg-left-hiring.png', 'bg-newsletter.png', 'bg-right-hiring.png',
        'controlcard.png', 'home-page-4-banner.png', 'icon-bottom-banner.png',
        'icon-top-banner.png', 'img-banner.png', 'img-chart.png',
        'img-job-search.png', 'img-profile.png', 'img-single.png',
        'img1.png', 'job-tools.png', 'left-job-head.png',
        'newsletter-left.png', 'newsletter-right.png', 'planning-job.png',
        'right-job-head.png'
    ];
    
    foreach ($pages as $index => $page) {
        $image = $pageImages[$index % count($pageImages)];
        DB::table('pages')->where('id', $page->id)->update(['image' => 'pages/' . $image]);
        echo "Updated page {$page->id} with image: pages/{$image}\n";
    }
}

echo "Image update process completed!\n";