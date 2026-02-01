<?php
// Check image status and paths
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

echo "=== IMAGE DIAGNOSTIC CHECK ===\n\n";

try {
    // Check storage link
    echo "1. 🔗 Storage Link Check:\n";
    $publicStorage = public_path('storage');
    $storagePublic = storage_path('app/public');
    
    echo "   Public storage path: $publicStorage\n";
    echo "   Storage public path: $storagePublic\n";
    echo "   Storage link exists: " . (is_link($publicStorage) ? "✅ YES" : "❌ NO") . "\n";
    echo "   Storage directory exists: " . (is_dir($storagePublic) ? "✅ YES" : "❌ NO") . "\n";
    
    // Check media files table
    echo "\n2. 📁 Media Files Check:\n";
    if (Schema::hasTable('media_files')) {
        $totalMedia = DB::table('media_files')->count();
        echo "   Total media files in DB: $totalMedia\n";
        
        if ($totalMedia > 0) {
            // Sample media files
            $sampleMedia = DB::table('media_files')
                ->select('id', 'name', 'url', 'mime_type', 'size')
                ->limit(5)
                ->get();
                
            echo "   Sample media files:\n";
            foreach ($sampleMedia as $media) {
                $fullPath = public_path($media->url);
                $exists = file_exists($fullPath) ? "✅" : "❌";
                echo "     $exists {$media->name} -> {$media->url}\n";
            }
            
            // Check for broken URLs
            $brokenUrls = DB::table('media_files')
                ->where('url', 'not like', 'storage/%')
                ->where('url', 'not like', 'http%')
                ->count();
            echo "   Potentially broken URLs: $brokenUrls\n";
        }
    } else {
        echo "   ❌ Media files table not found\n";
    }
    
    // Check actual storage directories
    echo "\n3. 📂 Storage Directories:\n";
    $storageSubdirs = [
        'banners', 'blog', 'categories', 'companies', 
        'galleries', 'general', 'icons', 'logos', 
        'pages', 'team', 'testimonials'
    ];
    
    foreach ($storageSubdirs as $subdir) {
        $path = storage_path("app/public/$subdir");
        $publicPath = public_path("storage/$subdir");
        $exists = is_dir($path) ? "✅" : "❌";
        $accessible = is_dir($publicPath) ? "✅" : "❌";
        
        if (is_dir($path)) {
            $fileCount = count(glob($path . "/*"));
            echo "   $exists $subdir/ ($fileCount files) -> Public: $accessible\n";
        } else {
            echo "   $exists $subdir/ (missing)\n";
        }
    }
    
    // Check permissions
    echo "\n4. 🔐 Permissions Check:\n";
    if (is_dir($storagePublic)) {
        $perms = substr(sprintf('%o', fileperms($storagePublic)), -4);
        echo "   Storage permissions: $perms " . ($perms >= '0755' ? "✅" : "❌") . "\n";
    }
    
    if (is_dir($publicStorage)) {
        $perms = substr(sprintf('%o', fileperms($publicStorage)), -4);
        echo "   Public storage permissions: $perms " . ($perms >= '0755' ? "✅" : "❌") . "\n";
    }
    
    // Check app URL configuration
    echo "\n5. 🌐 URL Configuration:\n";
    echo "   APP_URL: " . config('app.url') . "\n";
    echo "   Asset URL: " . config('app.asset_url', 'not set') . "\n";
    
} catch (Exception $e) {
    echo "❌ ERROR: " . $e->getMessage() . "\n";
}

echo "\n=== END IMAGE CHECK ===\n";
?>