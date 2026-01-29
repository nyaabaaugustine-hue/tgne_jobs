<?php

require_once 'vendor/autoload.php';

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

echo "Starting image update process...\n";

// Update companies table (if it exists and has data)
if (Schema::hasTable('companies') && DB::table('companies')->count() > 0) {
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
} else {
    echo "Companies table not found or empty\n";
}

// Update jobs table (if it exists and has data)
if (Schema::hasTable('jobs') && DB::table('jobs')->count() > 0) {
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
} else {
    echo "Jobs table not found or empty\n";
}

// Update users table (avatars)
if (Schema::hasTable('users') && DB::table('users')->count() > 0) {
    echo "Updating users...\n";
    $users = DB::table('users')->get();
    $userImages = [
        '1.png', '2.png', '3.png', '8.png'
    ];
    
    foreach ($users as $index => $user) {
        $image = $userImages[$index % count($userImages)];
        // For users, we'll assume there's a media table or we'll store the path directly
        // Since avatar_id is a foreign key, we'll need to create media records first
        $mediaId = DB::table('media')->insertGetId([
            'url' => 'avatars/' . $image,
            'name' => $image,
            'mime_type' => 'image/png',
            'size' => 1000,
            'created_at' => now(),
            'updated_at' => now()
        ]);
        
        DB::table('users')
            ->where('id', $user->id)
            ->update(['avatar_id' => $mediaId]);
        echo "Updated user {$user->id} with avatar: avatars/{$image}\n";
    }
} else {
    echo "Users table not found or empty\n";
}

// Update teams table (photo column)
if (Schema::hasTable('teams') && DB::table('teams')->count() > 0) {
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
            ->update(['photo' => 'teams/' . $image]);
        echo "Updated team {$team->id} with image: teams/{$image}\n";
    }
} else {
    echo "Teams table not found or empty\n";
}

// Update testimonials table
if (Schema::hasTable('testimonials') && DB::table('testimonials')->count() > 0) {
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
} else {
    echo "Testimonials table not found or empty\n";
}

// Update job_categories table (if it exists and has data)
if (Schema::hasTable('job_categories') && DB::table('job_categories')->count() > 0) {
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
} else {
    echo "Job categories table not found or empty\n";
}

// Update news table (if it exists and has data)
if (Schema::hasTable('news') && DB::table('news')->count() > 0) {
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
} else {
    echo "News table not found or empty\n";
}

// Update partners table (if it exists and has data)
if (Schema::hasTable('partners') && DB::table('partners')->count() > 0) {
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
} else {
    echo "Partners table not found or empty\n";
}

// Update gallery table
if (Schema::hasTable('galleries') && DB::table('galleries')->count() > 0) {
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
} else {
    echo "Galleries table not found or empty\n";
}

// Update pages table
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
        DB::table('pages')
            ->where('id', $page->id)
            ->update(['image' => 'pages/' . $image]);
        echo "Updated page {$page->id} with image: pages/{$image}\n";
    }
} else {
    echo "Pages table not found or empty\n";
}

echo "Image update process completed!\n";