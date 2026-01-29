<?php

require_once 'vendor/autoload.php';

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

echo "Starting image update process...\n";

// Update companies table
if (Schema::hasTable('companies')) {
    echo "Updating companies...\n";
    $companies = DB::table('companies')->get();
    $companyImages = [
        'bing-logo.png', 'dailymotion-logo.png', 'greenwood-logo.png', 'nintendo-logo.png',
        'ondo-logo.png', 'periscope-logo.png', 'powerhome-logo.png', 'square-logo.png',
        'tech-logo.png', 'toyota-logo.png'
    ];
    
    foreach ($companies as $index => $company) {
        $image = $companyImages[$index % count($companyImages)];
        DB::table('companies')
            ->where('id', $company->id)
            ->update(['logo' => 'companies/' . $image]);
        echo "Updated company {$company->id} with image: companies/{$image}\n";
    }
}

// Update jobs table
if (Schema::hasTable('jobs')) {
    echo "Updating jobs...\n";
    $jobs = DB::table('jobs')->get();
    $jobImages = [
        'img1.png', 'img2.png', 'img3.png', 'img4.png', 'img5.png',
        'img6.png', 'img7.png', 'img8.png', 'img9.png'
    ];
    
    foreach ($jobs as $index => $job) {
        $image = $jobImages[$index % count($jobImages)];
        DB::table('jobs')
            ->where('id', $job->id)
            ->update(['image' => 'jobs/' . $image]);
        echo "Updated job {$job->id} with image: jobs/{$image}\n";
    }
}

// Update users table (avatars)
if (Schema::hasTable('users')) {
    echo "Updating users...\n";
    $users = DB::table('users')->get();
    $userImages = [
        '1.png', '2.png', '3.png', '8.png'
    ];
    
    foreach ($users as $index => $user) {
        $image = $userImages[$index % count($userImages)];
        DB::table('users')
            ->where('id', $user->id)
            ->update(['avatar' => 'avatars/' . $image]);
        echo "Updated user {$user->id} with avatar: avatars/{$image}\n";
    }
}

// Update teams table
if (Schema::hasTable('teams')) {
    echo "Updating teams...\n";
    $teams = DB::table('teams')->get();
    $teamImages = [
        '1.png', '2.png', '3.png', '4.png', '5.png',
        '6.png', '7.png', '8.png'
    ];
    
    foreach ($teams as $index => $team) {
        $image = $teamImages[$index % count($teamImages)];
        DB::table('teams')
            ->where('id', $team->id)
            ->update(['image' => 'teams/' . $image]);
        echo "Updated team {$team->id} with image: teams/{$image}\n";
    }
}

// Update testimonials table
if (Schema::hasTable('testimonials')) {
    echo "Updating testimonials...\n";
    $testimonials = DB::table('testimonials')->get();
    $testimonialImages = [
        '1.png', '2.png', '3.png', '4.png'
    ];
    
    foreach ($testimonials as $index => $testimonial) {
        $image = $testimonialImages[$index % count($testimonialImages)];
        DB::table('testimonials')
            ->where('id', $testimonial->id)
            ->update(['image' => 'testimonials/' . $image]);
        echo "Updated testimonial {$testimonial->id} with image: testimonials/{$image}\n";
    }
}

// Update job_categories table
if (Schema::hasTable('job_categories')) {
    echo "Updating job categories...\n";
    $categories = DB::table('job_categories')->get();
    $categoryImages = [];
    for ($i = 1; $i <= 19; $i++) {
        $categoryImages[] = $i . '.png';
    }
    
    foreach ($categories as $index => $category) {
        $image = $categoryImages[$index % count($categoryImages)];
        DB::table('job_categories')
            ->where('id', $category->id)
            ->update(['image' => 'job-categories/' . $image]);
        echo "Updated job category {$category->id} with image: job-categories/{$image}\n";
    }
}

// Update news table
if (Schema::hasTable('news')) {
    echo "Updating news...\n";
    $news = DB::table('news')->get();
    $newsImages = [
        '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg',
        '6.jpg', '7.jpg', '8.jpg', '9.jpg', '10.jpg',
        '11.jpg', '12.jpg', '13.jpg', '14.jpg', '15.jpg',
        '16.jpg'
    ];
    
    foreach ($news as $index => $article) {
        $image = $newsImages[$index % count($newsImages)];
        DB::table('news')
            ->where('id', $article->id)
            ->update(['image' => 'news/' . $image]);
        echo "Updated news {$article->id} with image: news/{$image}\n";
    }
}

// Update partners table (our-partners)
if (Schema::hasTable('partners')) {
    echo "Updating partners...\n";
    $partners = DB::table('partners')->get();
    $partnerImages = [
        'acer.png', 'asus.png', 'dell.png', 'microsoft.png', 'nokia.png'
    ];
    
    foreach ($partners as $index => $partner) {
        $image = $partnerImages[$index % count($partnerImages)];
        DB::table('partners')
            ->where('id', $partner->id)
            ->update(['image' => 'our-partners/' . $image]);
        echo "Updated partner {$partner->id} with image: our-partners/{$image}\n";
    }
}

// Update gallery table
if (Schema::hasTable('galleries')) {
    echo "Updating galleries...\n";
    $galleries = DB::table('galleries')->get();
    $galleryImages = [
        '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg',
        '6.jpg', '7.jpg', '8.jpg', '9.jpg', '10.jpg'
    ];
    
    foreach ($galleries as $index => $gallery) {
        $image = $galleryImages[$index % count($galleryImages)];
        DB::table('galleries')
            ->where('id', $gallery->id)
            ->update(['image' => 'galleries/' . $image]);
        echo "Updated gallery {$gallery->id} with image: galleries/{$image}\n";
    }
}

// Update general settings or pages that might have images
if (Schema::hasTable('pages')) {
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
        DB::table('pages')
            ->where('id', $page->id)
            ->update(['image' => 'pages/' . $image]);
        echo "Updated page {$page->id} with image: pages/{$image}\n";
    }
}

echo "Image update process completed!\n";