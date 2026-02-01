<?php
// Web-based diagnostic script
// Visit: https://your-app.onrender.com/check.php

// Security check
$allowedIPs = ['127.0.0.1', '::1'];
$isLocal = in_array($_SERVER['REMOTE_ADDR'] ?? '', $allowedIPs);
$hasKey = isset($_GET['key']) && $_GET['key'] === 'check-jobbox-2026';

if (!$isLocal && !$hasKey) {
    http_response_code(403);
    die('Access denied. Add ?key=check-jobbox-2026 to URL');
}

header('Content-Type: text/html; charset=utf-8');
?>
<!DOCTYPE html>
<html>
<head>
    <title>JobBox Diagnostic Check</title>
    <style>
        body { font-family: monospace; background: #1a1a1a; color: #00ff00; padding: 20px; }
        .success { color: #00ff00; }
        .error { color: #ff0000; }
        .warning { color: #ffff00; }
        .container { max-width: 800px; margin: 0 auto; }
        pre { background: #000; padding: 10px; border-radius: 5px; overflow-x: auto; }
        table { border-collapse: collapse; width: 100%; margin: 10px 0; }
        th, td { border: 1px solid #333; padding: 8px; text-align: left; }
        th { background: #333; }
    </style>
</head>
<body>
<div class="container">
<h1>🔍 JobBox Diagnostic Check</h1>
<pre>
<?php
try {
    require_once '../vendor/autoload.php';
    $app = require_once '../bootstrap/app.php';
    $kernel = $app->make('Illuminate\Contracts\Console\Kernel');
    $kernel->bootstrap();
    
    echo "=== JOBBOX DIAGNOSTIC REPORT ===\n\n";
    
    // Database info
    echo "📊 DATABASE INFO:\n";
    echo "Connection: " . config('database.default') . "\n";
    echo "Host: " . config('database.connections.' . config('database.default') . '.host', 'N/A') . "\n";
    echo "Database: " . config('database.connections.' . config('database.default') . '.database', 'N/A') . "\n\n";
    
    // Check main tables
    $tables = [
        'users' => 'Users',
        'pages' => 'Pages',
        'jb_jobs' => 'Jobs', 
        'jb_companies' => 'Companies',
        'jb_applications' => 'Job Applications',
        'jb_accounts' => 'Accounts',
        'jb_categories' => 'Job Categories',
        'media_files' => 'Media Files'
    ];
    
    echo "📋 TABLE COUNTS:\n";
    foreach ($tables as $table => $name) {
        try {
            if (Schema::hasTable($table)) {
                $count = DB::table($table)->count();
                echo sprintf("%-20s: %d\n", $name, $count);
            } else {
                echo sprintf("%-20s: TABLE MISSING!\n", $name);
            }
        } catch (Exception $e) {
            echo sprintf("%-20s: ERROR\n", $name);
        }
    }
    
    // Check statuses
    echo "\n📈 CONTENT STATUS:\n";
    
    if (Schema::hasTable('pages')) {
        $publishedPages = DB::table('pages')->where('status', 'published')->count();
        $totalPages = DB::table('pages')->count();
        echo "Published pages: $publishedPages / $totalPages\n";
    }
    
    if (Schema::hasTable('jb_jobs')) {
        $publishedJobs = DB::table('jb_jobs')->where('status', 'published')->count();
        $approvedJobs = DB::table('jb_jobs')->where('moderation_status', 'approved')->count();
        $totalJobs = DB::table('jb_jobs')->count();
        echo "Published jobs: $publishedJobs / $totalJobs\n";
        echo "Approved jobs: $approvedJobs / $totalJobs\n";
    }
    
    if (Schema::hasTable('jb_companies')) {
        $publishedCompanies = DB::table('jb_companies')->where('status', 'published')->count();
        $totalCompanies = DB::table('jb_companies')->count();
        echo "Published companies: $publishedCompanies / $totalCompanies\n";
    }
    
    // Check images
    echo "\n🖼️ IMAGE STATUS:\n";
    if (Schema::hasTable('media_files')) {
        $totalMedia = DB::table('media_files')->count();
        $storageMedia = DB::table('media_files')->where('url', 'like', 'storage/%')->count();
        echo "Total media files: $totalMedia\n";
        echo "Correct URLs (storage/): $storageMedia\n";
        echo "Broken URLs: " . ($totalMedia - $storageMedia) . "\n";
    }
    
    // Check admin user
    echo "\n👤 ADMIN USER:\n";
    $adminUser = DB::table('users')->where('email', 'admin@admin.com')->first();
    if ($adminUser) {
        echo "✅ Admin user exists: {$adminUser->first_name} {$adminUser->last_name}\n";
        echo "Admin ID: {$adminUser->id}\n";
    } else {
        echo "❌ Admin user not found!\n";
    }
    
    // Check storage
    echo "\n💾 STORAGE STATUS:\n";
    $publicStorage = public_path('storage');
    $storagePublic = storage_path('app/public');
    echo "Storage link exists: " . (is_link($publicStorage) ? "✅ YES" : "❌ NO") . "\n";
    echo "Storage directory exists: " . (is_dir($storagePublic) ? "✅ YES" : "❌ NO") . "\n";
    
    // Environment
    echo "\n🌐 ENVIRONMENT:\n";
    echo "APP_URL: " . config('app.url') . "\n";
    echo "APP_ENV: " . config('app.env') . "\n";
    echo "Cache driver: " . config('cache.default') . "\n";
    echo "Session driver: " . config('session.driver') . "\n";
    
} catch (Exception $e) {
    echo "<span class='error'>❌ ERROR: " . $e->getMessage() . "</span>\n";
}

echo "\n=== END DIAGNOSTIC ===\n";
?>
</pre>

<div style="margin-top: 20px; padding: 15px; background: #333; border-radius: 5px;">
    <h3>🛠️ Actions:</h3>
    <p><strong>If you see issues above:</strong></p>
    <p>1. <a href="activate.php?key=activate-jobbox-2026" style="color: #00ff00;">Run Activation Script</a></p>
    <p>2. Check your admin panel: <a href="/admin" style="color: #00ff00;">/admin</a></p>
    <p>3. Visit your site: <a href="/" style="color: #00ff00;">Homepage</a></p>
</div>

</div>
</body>
</html>