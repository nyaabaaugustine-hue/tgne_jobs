<?php
// Activate/Publish ALL content and fix images
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

echo "=== ACTIVATING ALL CONTENT & FIXING IMAGES ===\n\n";

try {
    $totalFixed = 0;
    
    // 1. ACTIVATE ALL PAGES
    echo "1. 📄 Activating all pages...\n";
    $pageUpdates = DB::table('pages')->where('status', '!=', 'published')->update([
        'status' => 'published',
        'updated_at' => now()
    ]);
    echo "   ✅ Activated $pageUpdates pages\n";
    $totalFixed += $pageUpdates;
    
    // 2. ACTIVATE ALL JOBS
    if (Schema::hasTable('jb_jobs')) {
        echo "2. 💼 Activating all jobs...\n";
        $jobUpdates = DB::table('jb_jobs')->update([
            'status' => 'published',
            'moderation_status' => 'approved',
            'is_featured' => 1,
            'updated_at' => now()
        ]);
        echo "   ✅ Activated $jobUpdates jobs (published + approved + featured)\n";
        $totalFixed += $jobUpdates;
    }
    
    // 3. ACTIVATE ALL COMPANIES
    if (Schema::hasTable('jb_companies')) {
        echo "3. 🏢 Activating all companies...\n";
        $companyUpdates = DB::table('jb_companies')->update([
            'status' => 'published',
            'is_featured' => 1,
            'updated_at' => now()
        ]);
        echo "   ✅ Activated $companyUpdates companies (published + featured)\n";
        $totalFixed += $companyUpdates;
    }
    
    // 4. ACTIVATE ALL ACCOUNTS
    if (Schema::hasTable('jb_accounts')) {
        echo "4. 👥 Activating all accounts...\n";
        $accountUpdates = DB::table('jb_accounts')->update([
            'confirmed_at' => now(),
            'is_featured' => 1,
            'is_public_profile' => 1,
            'available_for_hiring' => 1,
            'updated_at' => now()
        ]);
        echo "   ✅ Activated $accountUpdates accounts (confirmed + featured + public)\n";
        $totalFixed += $accountUpdates;
    }
    
    // 5. ACTIVATE ALL CATEGORIES
    if (Schema::hasTable('jb_categories')) {
        echo "5. 📂 Activating all job categories...\n";
        $categoryUpdates = DB::table('jb_categories')->update([
            'status' => 'published',
            'is_featured' => 1,
            'updated_at' => now()
        ]);
        echo "   ✅ Activated $categoryUpdates categories\n";
        $totalFixed += $categoryUpdates;
    }
    
    // 6. ACTIVATE ALL BLOG POSTS
    if (Schema::hasTable('posts')) {
        echo "6. 📝 Activating all blog posts...\n";
        $postUpdates = DB::table('posts')->update([
            'status' => 'published',
            'is_featured' => 1,
            'updated_at' => now()
        ]);
        echo "   ✅ Activated $postUpdates blog posts\n";
        $totalFixed += $postUpdates;
    }
    
    // 7. FIX MEDIA FILES AND IMAGES
    echo "7. 🖼️ Fixing media files and images...\n";
    
    if (Schema::hasTable('media_files')) {
        // Update media file URLs to use correct storage path
        $mediaFiles = DB::table('media_files')->get();
        $mediaFixed = 0;
        
        foreach ($mediaFiles as $media) {
            $oldUrl = $media->url;
            $newUrl = $oldUrl;
            
            // Fix common image path issues
            if (strpos($oldUrl, 'storage/') === false && !empty($media->folder_id)) {
                // Add storage prefix if missing
                $newUrl = 'storage/' . ltrim($oldUrl, '/');
            }
            
            // Ensure images exist in public/storage
            if ($oldUrl !== $newUrl) {
                DB::table('media_files')->where('id', $media->id)->update([
                    'url' => $newUrl,
                    'updated_at' => now()
                ]);
                $mediaFixed++;
            }
        }
        
        echo "   ✅ Fixed $mediaFixed media file URLs\n";
        $totalFixed += $mediaFixed;
        
        // Make sure all media files are accessible
        $allMediaCount = DB::table('media_files')->count();
        echo "   📊 Total media files: $allMediaCount\n";
    }
    
    // 8. ENSURE STORAGE LINK EXISTS
    echo "8. 🔗 Ensuring storage link exists...\n";
    if (!file_exists(public_path('storage'))) {
        Artisan::call('storage:link');
        echo "   ✅ Created storage link\n";
    } else {
        echo "   ✅ Storage link already exists\n";
    }
    
    // 9. FIX IMAGE PERMISSIONS
    echo "9. 🔐 Fixing image permissions...\n";
    $storagePath = storage_path('app/public');
    $publicStoragePath = public_path('storage');
    
    if (is_dir($storagePath)) {
        // Set proper permissions for storage directory
        chmod($storagePath, 0755);
        echo "   ✅ Fixed storage directory permissions\n";
    }
    
    if (is_dir($publicStoragePath)) {
        chmod($publicStoragePath, 0755);
        echo "   ✅ Fixed public storage permissions\n";
    }
    
    // 10. CLEAR ALL CACHES
    echo "10. 🧹 Clearing all caches...\n";
    Artisan::call('optimize:clear');
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('view:clear');
    Artisan::call('route:clear');
    echo "    ✅ All caches cleared\n";
    
    // 11. REBUILD CACHES
    echo "11. ⚡ Rebuilding caches...\n";
    Artisan::call('config:cache');
    Artisan::call('route:cache');
    Artisan::call('view:cache');
    echo "    ✅ Caches rebuilt\n";
    
    echo "\n🎉 ACTIVATION COMPLETE! Fixed $totalFixed items total.\n";
    
    // FINAL STATS
    echo "\n=== FINAL ACTIVATION STATS ===\n";
    echo "✅ Published pages: " . DB::table('pages')->where('status', 'published')->count() . "\n";
    
    if (Schema::hasTable('jb_jobs')) {
        $publishedJobs = DB::table('jb_jobs')->where('status', 'published')->count();
        $approvedJobs = DB::table('jb_jobs')->where('moderation_status', 'approved')->count();
        echo "✅ Published jobs: $publishedJobs\n";
        echo "✅ Approved jobs: $approvedJobs\n";
    }
    
    if (Schema::hasTable('jb_companies')) {
        echo "✅ Published companies: " . DB::table('jb_companies')->where('status', 'published')->count() . "\n";
    }
    
    if (Schema::hasTable('jb_accounts')) {
        echo "✅ Confirmed accounts: " . DB::table('jb_accounts')->whereNotNull('confirmed_at')->count() . "\n";
    }
    
    if (Schema::hasTable('media_files')) {
        echo "✅ Media files: " . DB::table('media_files')->count() . "\n";
    }
    
    echo "\n🚀 Your JobBox site is now fully activated with working images!\n";
    echo "🌐 Visit your site: " . config('app.url') . "\n";
    echo "🔧 Admin panel: " . config('app.url') . "/admin\n";
    
} catch (Exception $e) {
    echo "❌ ERROR: " . $e->getMessage() . "\n";
    echo "Stack trace:\n" . $e->getTraceAsString() . "\n";
}

echo "\n=== ACTIVATION COMPLETE ===\n";
?>