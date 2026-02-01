<?php
// Web-based activation script - Run via browser
// Visit: https://your-app.onrender.com/activate.php

// Security check - only allow in specific conditions
$allowedIPs = ['127.0.0.1', '::1']; // localhost only for security
$isLocal = in_array($_SERVER['REMOTE_ADDR'] ?? '', $allowedIPs);
$hasActivationKey = isset($_GET['key']) && $_GET['key'] === 'activate-jobbox-2026';

if (!$isLocal && !$hasActivationKey) {
    http_response_code(403);
    die('Access denied. Add ?key=activate-jobbox-2026 to URL');
}

// Set content type for proper display
header('Content-Type: text/html; charset=utf-8');
?>
<!DOCTYPE html>
<html>
<head>
    <title>JobBox Activation</title>
    <style>
        body { font-family: monospace; background: #1a1a1a; color: #00ff00; padding: 20px; }
        .success { color: #00ff00; }
        .error { color: #ff0000; }
        .info { color: #ffff00; }
        .container { max-width: 800px; margin: 0 auto; }
        pre { background: #000; padding: 10px; border-radius: 5px; overflow-x: auto; }
    </style>
</head>
<body>
<div class="container">
<h1>🚀 JobBox Activation Script</h1>
<pre>
<?php
try {
    // Bootstrap Laravel
    require_once '../vendor/autoload.php';
    $app = require_once '../bootstrap/app.php';
    $kernel = $app->make('Illuminate\Contracts\Console\Kernel');
    $kernel->bootstrap();
    
    echo "=== ACTIVATING ALL CONTENT & FIXING IMAGES ===\n\n";
    
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
        $mediaFiles = DB::table('media_files')->get();
        $mediaFixed = 0;
        
        foreach ($mediaFiles as $media) {
            $oldUrl = $media->url;
            $newUrl = $oldUrl;
            
            // Fix common image path issues
            if (strpos($oldUrl, 'storage/') === false && !empty($media->folder_id)) {
                $newUrl = 'storage/' . ltrim($oldUrl, '/');
            }
            
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
        
        $allMediaCount = DB::table('media_files')->count();
        echo "   📊 Total media files: $allMediaCount\n";
    }
    
    // 8. ENSURE STORAGE LINK EXISTS
    echo "8. 🔗 Ensuring storage link exists...\n";
    try {
        Artisan::call('storage:link');
        echo "   ✅ Storage link created/verified\n";
    } catch (Exception $e) {
        echo "   ⚠️ Storage link: " . $e->getMessage() . "\n";
    }
    
    // 9. CLEAR ALL CACHES
    echo "9. 🧹 Clearing all caches...\n";
    try {
        Artisan::call('optimize:clear');
        Artisan::call('cache:clear');
        Artisan::call('config:clear');
        Artisan::call('view:clear');
        Artisan::call('route:clear');
        echo "   ✅ All caches cleared\n";
    } catch (Exception $e) {
        echo "   ⚠️ Cache clear: " . $e->getMessage() . "\n";
    }
    
    // 10. REBUILD CACHES
    echo "10. ⚡ Rebuilding caches...\n";
    try {
        Artisan::call('config:cache');
        Artisan::call('route:cache');
        Artisan::call('view:cache');
        echo "    ✅ Caches rebuilt\n";
    } catch (Exception $e) {
        echo "    ⚠️ Cache rebuild: " . $e->getMessage() . "\n";
    }
    
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
    echo "<span class='error'>❌ ERROR: " . $e->getMessage() . "</span>\n";
    echo "<span class='error'>Stack trace:\n" . $e->getTraceAsString() . "</span>\n";
}

echo "\n=== ACTIVATION COMPLETE ===\n";
?>
</pre>

<div style="margin-top: 20px; padding: 15px; background: #333; border-radius: 5px;">
    <h3>🎯 Next Steps:</h3>
    <p><strong>1. Visit your admin panel:</strong> <a href="/admin" target="_blank" style="color: #00ff00;"><?php echo config('app.url'); ?>/admin</a></p>
    <p><strong>2. Login with:</strong> admin@admin.com / password</p>
    <p><strong>3. Check your site:</strong> <a href="/" target="_blank" style="color: #00ff00;"><?php echo config('app.url'); ?></a></p>
    <p><strong>4. Security:</strong> Delete this file after use: <code>rm public/activate.php</code></p>
</div>

</div>
</body>
</html>