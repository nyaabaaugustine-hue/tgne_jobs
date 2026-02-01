<?php
// Web-based image persistence fix
// Visit: https://your-app.onrender.com/fix-images.php?key=fix-images-2026

$allowedIPs = ['127.0.0.1', '::1'];
$isLocal = in_array($_SERVER['REMOTE_ADDR'] ?? '', $allowedIPs);
$hasKey = isset($_GET['key']) && $_GET['key'] === 'fix-images-2026';

if (!$isLocal && !$hasKey) {
    http_response_code(403);
    die('Access denied. Add ?key=fix-images-2026 to URL');
}

header('Content-Type: text/html; charset=utf-8');
?>
<!DOCTYPE html>
<html>
<head>
    <title>Fix Image Persistence</title>
    <style>
        body { font-family: monospace; background: #1a1a1a; color: #00ff00; padding: 20px; }
        .success { color: #00ff00; }
        .error { color: #ff0000; }
        .warning { color: #ffff00; }
        .container { max-width: 900px; margin: 0 auto; }
        pre { background: #000; padding: 15px; border-radius: 5px; overflow-x: auto; }
        .section { margin: 20px 0; padding: 15px; background: #333; border-radius: 5px; }
    </style>
</head>
<body>
<div class="container">
<h1>🖼️ Image Persistence Fix</h1>

<div class="section">
<h3>🔍 Problem Diagnosis:</h3>
<p>Images break on every redeploy because:</p>
<ul>
<li>❌ Images stored in container filesystem (ephemeral)</li>
<li>❌ Container gets completely rebuilt on each deploy</li>
<li>❌ All uploaded images are lost</li>
<li>❌ Database still references missing files</li>
</ul>
</div>

<div class="section">
<h3>💡 Solution:</h3>
<p>Configure persistent cloud storage for images</p>
</div>

<pre>
<?php
try {
    require_once '../vendor/autoload.php';
    $app = require_once '../bootstrap/app.php';
    $kernel = $app->make('Illuminate\Contracts\Console\Kernel');
    $kernel->bootstrap();
    
    echo "=== FIXING IMAGE PERSISTENCE ISSUES ===\n\n";
    
    // Step 1: Diagnose current situation
    echo "1. 🔍 Diagnosing current image status...\n";
    
    if (Schema::hasTable('media_files')) {
        $totalMedia = DB::table('media_files')->count();
        $existingFiles = 0;
        $missingFiles = 0;
        
        $mediaFiles = DB::table('media_files')->get();
        
        foreach ($mediaFiles as $media) {
            $publicPath = public_path($media->url);
            $storagePath = storage_path('app/public/' . str_replace('storage/', '', $media->url));
            
            if (file_exists($publicPath) || file_exists($storagePath)) {
                $existingFiles++;
            } else {
                $missingFiles++;
            }
        }
        
        echo "   📊 Total media files: $totalMedia\n";
        echo "   ✅ Existing files: $existingFiles\n";
        echo "   ❌ Missing files: $missingFiles\n";
        
        $missingPercentage = $totalMedia > 0 ? ($missingFiles / $totalMedia) * 100 : 0;
        echo "   📈 Missing percentage: " . round($missingPercentage, 1) . "%\n\n";
        
        if ($missingPercentage > 50) {
            echo "   🚨 CRITICAL: Most images are missing! This confirms ephemeral storage issue.\n\n";
        }
    }
    
    // Step 2: Create missing directories
    echo "2. 📁 Creating missing storage directories...\n";
    $storageSubdirs = [
        'banners', 'blog', 'categories', 'companies', 
        'galleries', 'general', 'icons', 'logos', 
        'pages', 'team', 'testimonials', 'avatars', 'resume'
    ];
    
    $dirsCreated = 0;
    foreach ($storageSubdirs as $subdir) {
        $dir = storage_path("app/public/$subdir");
        if (!is_dir($dir)) {
            mkdir($dir, 0755, true);
            $dirsCreated++;
        }
        
        // Create .gitkeep to preserve directory in git
        $gitkeepFile = $dir . '/.gitkeep';
        if (!file_exists($gitkeepFile)) {
            file_put_contents($gitkeepFile, '# Keep this directory in git');
        }
    }
    echo "   ✅ Created $dirsCreated directories\n";
    
    // Step 3: Fix media URLs
    echo "3. 🔧 Fixing media file URLs...\n";
    $urlsFixed = 0;
    
    if (Schema::hasTable('media_files')) {
        foreach ($mediaFiles as $media) {
            $oldUrl = $media->url;
            $newUrl = $oldUrl;
            
            // Ensure URL starts with storage/
            if (!str_starts_with($oldUrl, 'storage/') && !str_starts_with($oldUrl, 'http')) {
                $newUrl = 'storage/' . ltrim($oldUrl, '/');
                
                DB::table('media_files')->where('id', $media->id)->update([
                    'url' => $newUrl,
                    'updated_at' => now()
                ]);
                
                $urlsFixed++;
            }
        }
    }
    echo "   ✅ Fixed $urlsFixed media URLs\n";
    
    // Step 4: Create placeholder images
    echo "4. 🖼️ Creating placeholder images for missing files...\n";
    $placeholdersCreated = 0;
    
    if (extension_loaded('gd') && Schema::hasTable('media_files')) {
        foreach ($mediaFiles as $media) {
            $storagePath = storage_path('app/public/' . str_replace('storage/', '', $media->url));
            
            if (!file_exists($storagePath)) {
                $dir = dirname($storagePath);
                if (!is_dir($dir)) {
                    mkdir($dir, 0755, true);
                }
                
                // Create placeholder image
                $img = imagecreate(400, 300);
                $bg = imagecolorallocate($img, 240, 240, 240);
                $text_color = imagecolorallocate($img, 100, 100, 100);
                $border_color = imagecolorallocate($img, 200, 200, 200);
                
                // Draw border
                imagerectangle($img, 0, 0, 399, 299, $border_color);
                
                // Add text
                imagestring($img, 5, 130, 130, 'Image Missing', $text_color);
                imagestring($img, 3, 100, 150, 'Redeploy broke link', $text_color);
                imagestring($img, 2, 50, 170, substr($media->name, 0, 40), $text_color);
                
                $extension = pathinfo($media->url, PATHINFO_EXTENSION);
                if (in_array(strtolower($extension), ['jpg', 'jpeg'])) {
                    imagejpeg($img, $storagePath, 80);
                } else {
                    imagepng($img, $storagePath);
                }
                
                imagedestroy($img);
                $placeholdersCreated++;
            }
        }
    }
    echo "   ✅ Created $placeholdersCreated placeholder images\n";
    
    // Step 5: Ensure storage link
    echo "5. 🔗 Ensuring storage link exists...\n";
    try {
        if (!file_exists(public_path('storage'))) {
            Artisan::call('storage:link');
            echo "   ✅ Storage link created\n";
        } else {
            echo "   ✅ Storage link already exists\n";
        }
    } catch (Exception $e) {
        echo "   ⚠️ Storage link issue: " . $e->getMessage() . "\n";
    }
    
    // Step 6: Clear caches
    echo "6. 🧹 Clearing caches...\n";
    try {
        Artisan::call('cache:clear');
        Artisan::call('config:clear');
        Artisan::call('view:clear');
        echo "   ✅ All caches cleared\n";
    } catch (Exception $e) {
        echo "   ⚠️ Cache issue: " . $e->getMessage() . "\n";
    }
    
    echo "\n🎉 TEMPORARY FIX COMPLETE!\n";
    echo "✅ Placeholder images created\n";
    echo "✅ URLs fixed\n";
    echo "✅ Storage directories preserved\n";
    
} catch (Exception $e) {
    echo "<span class='error'>❌ ERROR: " . $e->getMessage() . "</span>\n";
}
?>
</pre>

<div class="section">
<h3>⚠️ This is a TEMPORARY fix!</h3>
<p><strong>The real solution is to configure cloud storage:</strong></p>

<h4>🌩️ Option 1: Cloudinary (Recommended for images)</h4>
<ol>
<li>Sign up at <a href="https://cloudinary.com" target="_blank">cloudinary.com</a></li>
<li>Get your credentials (Cloud Name, API Key, API Secret)</li>
<li>Add to Render environment variables:
<pre style="font-size: 12px;">
FILESYSTEM_DISK=cloudinary
CLOUDINARY_CLOUD_NAME=your_cloud_name
CLOUDINARY_API_KEY=your_api_key
CLOUDINARY_API_SECRET=your_api_secret
</pre>
</li>
<li>Install Cloudinary package: <code>composer require cloudinary/cloudinary_php</code></li>
</ol>

<h4>☁️ Option 2: AWS S3</h4>
<ol>
<li>Create AWS S3 bucket</li>
<li>Get AWS credentials</li>
<li>Add to Render environment:
<pre style="font-size: 12px;">
FILESYSTEM_DISK=s3
AWS_ACCESS_KEY_ID=your_key
AWS_SECRET_ACCESS_KEY=your_secret
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=your_bucket_name
</pre>
</li>
</ol>

<h4>🔄 After configuring cloud storage:</h4>
<ol>
<li>Redeploy your app</li>
<li>Upload new images (they'll go to cloud)</li>
<li>Images will persist through redeployments</li>
</ol>
</div>

<div class="section">
<h3>🎯 Next Steps:</h3>
<p>1. <a href="/admin" target="_blank">Check your admin panel</a> - images should now show placeholders</p>
<p>2. Configure cloud storage for permanent solution</p>
<p>3. Re-upload important images after cloud storage is configured</p>
<p>4. Delete this file: <code>rm public/fix-images.php</code></p>
</div>

</div>
</body>
</html>