<?php

require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Artisan;

try {
    // Create home page
    $content = '[search-box title="The Easiest Way to Get Your New Job" highlight_text="Easiest Way" description="Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day" banner_image_1="pages/banner1.png" icon_top_banner="pages/icon-top-banner.png" banner_image_2="pages/banner2.png" icon_bottom_banner="pages/icon-bottom-banner.png" style="style-1" trending_keywords="Design,Development,Manager,Senior"][/search-box][featured-job-categories title="Browse by category" subtitle="Find the job that\'s perfect for you. about 800+ new jobs everyday"][/featured-job-categories][apply-banner subtitle="Let\'s Work Together <br\>& Explore Opportunities" highlight_sub_title_text="Work, Explore" title_1="We are" title_2="HIRING" button_apply_text="Apply" button_apply_link="#" apply_image_left="pages/bg-left-hiring.png" apply_image_right="pages/bg-right-hiring.png"][/apply-banner][job-of-the-day title="Jobs of the day" subtitle="Search and connect with the right candidates faster." job_categories="4,9,1,3,5,7" style="style-1"][/job-of-the-day][job-grid title="Find The One That\'s Right For You" high_light_title_text="Right" subtitle="Millions Of Jobs." description="Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 600,000 companies worldwide. The right job is out there." image_job_1="pages/img-chart.png" image_job_2="pages/controlcard.png" image="pages/img1.png" button_text="Search jobs" button_url="#" link_text="Learn more" link_text_url="#"][/job-grid][top-companies title="Top Recruiters" description="Discover your next career move, freelance gig, or internship"][/top-companies][job-by-location title="Jobs by Location" description="Find your favourite jobs and get the benefits of yourself" city="1,2,3,4,5,6"][/job-by-location][news-and-blogs title="News and Blog" subtitle="Get the latest news, updates and tips"][/news-and-blogs]';

    DB::table('pages')->insert([
        'name' => 'Home',
        'title' => 'Home',
        'content' => $content,
        'template' => 'default',
        'status' => 'published',
        'created_at' => now(),
        'updated_at' => now()
    ]);

    echo "Home page created successfully\n";

    // Set homepage in settings
    DB::table('settings')->updateOrInsert(
        ['key' => 'theme_jobbox_homepage_id'],
        ['value' => 1]
    );

    echo "Homepage setting updated\n";

    // Clear cache
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('route:clear');
    Artisan::call('view:clear');

    echo "Cache cleared successfully\n";

} catch (Exception $e) {
    echo "Error: " . $e->getMessage() . "\n";
}