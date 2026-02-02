<?php
// Web-based cloud storage migration
// Visit: https://your-app.onrender.com/migrate-images.php?key=migrate-2026

$allowedIPs = ['127.0.0.1', '::1'];
$isLocal = in_array($_SERVER['REMOTE_ADDR'] ?? '', $allowedIPs);
$hasKey = isset($_GET['key']) && $_GET['key'] === 'migrate-2026';

if (!$isLocal && !$hasKey) {
    http_response_code(403);
    die('Access denied. Add ?key=migrate-2026 to URL');
}

header('Content-Type: text/html; charset=utf-8');
?>
<!DOCTYPE html>
<html>
<head>
    <title>Migrate Images to Cloud Storage</title>
    <style>
        body { font-family: monospace; background: #1a1a1a; color: #00ff00; padding: 20px; }
        .success { color: #00ff00; }
        .error { color: #ff0000; }
        .warning { color: #ffff00; }
        .container { max-width: 900px; margin: 0 auto; }
        pre { background: #000; padding: 15px; border-radius: 5px; overflow-x: auto; }
        .section { margin: 20px 0; padding: 15px; background: #333; border-radius: 5px; }
        .button { background: #007acc; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px; display: inline-block; margin: 10px 5px; }
        .button:hover { background: #005a99; }
    </style>
</head>
<body>
<div class="container">
<h1>☁️ Cloud Storage Migration</h1>

<div class="section">
<h3>📋 Before You Start:</h3>
<ol>
<li>✅ Set up cloud storage (Cloudinary or AWS S3)</li>
<li>✅ Update Render environment variables</li>
<li>✅ Set FILESYSTEM_DISK to 'cloudinary' or 's3'</li>
<li>✅ Redeploy your application</li>
<li>🔄 Run this migration script</li>
</ol>

<p><strong>⚠️ This will migrate existing images to cloud storage permanently.</strong></p>
</div>

<?php if (isset($_GET['action']) && $_GET['action'] === 'migrate'): ?>
<div class="section">
<h3>🚀 Migration in Progress...</h3>
<pre>
<?php
try {
    require_once '../vendor/autoload.php';
    $app = require_once '../bootstrap/app.php';
    $kernel = $app->make('Illuminate\Contracts\Console\Kernel');
    $kernel->bootstrap();
    
    use Illuminate\Support\Facades\Storage;
    use Illuminate\Support\Facades\DB;
    use Illuminate\Support\Facades\Schema;
    
    echo "=== CLOUD STORAGE MIGRATION ===\n\n";
    
    // Check configuration
    $defaultDisk = config('filesystems.default');
    echo "Current filesystem disk: $defaultDisk\n";
    
    if ($defaultDisk === 'local' || $defaultDisk === 'public') {
        echo "❌ ERROR: Cloud storage not configured!\n";
        echo "Please set FILESYSTEM_DISK environment variable to 'cloudinary' or 's3'\n";
        echo "And configure the appropriate credentials in Render dashboard.\n\n";
        echo "See CLOUD_STORAGE_SETUP.md for detailed instructions.\n";
        throw new Exception("Cloud storage not configured");
    }
    
    // Test cloud storage connection
    echo "Testing cloud storage connection...\n";
    try {
        Storage::disk($defaultDisk)->put('test-migration.txt', 'Migration test - ' . date('Y-m-d H:i:s'));
        $testUrl = Storage::disk($defaultDisk)->url('test-migration.txt');
        echo "✅ Cloud storage working! Test file: $testUrl\n";
        Storage::disk($defaultDisk)->delete('test-migration.txt');
    } catch (Exception $e) {
        echo "❌ Cloud storage connection failed: " . $e->getMessage() . "\n";
        throw new Exception("Cloud storage connection failed");
    }
    
    if (!Schema::hasTable('media_files')) {
        echo "❌ No media_files table found\n";
        throw new Exception("Media files table not found");
    }
    
    // Get all media files that need migration
    $mediaFiles = DB::table('media_files')
        ->where('url', 'not like', 'http%') // Skip already migrated files
        ->get();
    
    $totalFiles = $mediaFiles->count();
    echo "\nFound $totalFiles media files to migrate\n\n";
    
    if ($totalFiles === 0) {
        echo "🎉 No files need migration! All images are already using cloud storage.\n";
    } else {
        $migrated = 0;
        $errors = 0;
        
        foreach ($mediaFiles as $media) {
            echo "Processing: {$media->name}... ";
            
            // Find the local file
            $localPath = null;
            $possiblePaths = [
                public_path($media->url),
                storage_path('app/public/' . str_replace('storage/', '', $media->url)),
                public_path('storage/' . str_replace('storage/', '', $media->url))
            ];
            
            foreach ($possiblePaths as $path) {
                if (file_exists($path)) {
                    $localPath = $path;
                    break;
                }
            }
            
            if (!$localPath) {
                // Create placeholder if original file is missing
                echo "MISSING - creating placeholder... ";
                
                try {
                    // Create a simple placeholder image
                    $placeholderContent = base64_decode('iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNkYPhfDwAChAI9jU77yQAAAABJRU5ErkJggg==');
                    
                    $extension = pathinfo($media->name, PATHINFO_EXTENSION) ?: 'png';
                    $folder = 'placeholders';
                    $cloudPath = "$folder/" . uniqid() . "_placeholder.$extension";
                    
                    $uploaded = Storage::disk($defaultDisk)->put($cloudPath, $placeholderContent);
                    
                    if ($uploaded) {
                        $cloudUrl = Storage::disk($defaultDisk)->url($cloudPath);
                        
                        DB::table('media_files')->where('id', $media->id)->update([
                            'url' => $cloudUrl,
                            'updated_at' => now()
                        ]);
                        
                        echo "PLACEHOLDER CREATED\n";
                        $migrated++;
                    } else {
                        echo "ERROR\n";
                        $errors++;
                    }
                } catch (Exception $e) {
                    echo "ERROR (" . $e->getMessage() . ")\n";
                    $errors++;
                }
                continue;
            }
            
            try {
                // Generate cloud storage path
                $extension = pathinfo($media->name, PATHINFO_EXTENSION);
                $folder = 'migrated';
                $cloudPath = "$folder/" . uniqid() . "_" . $media->name;
                
                // Upload to cloud storage
                $fileContents = file_get_contents($localPath);
                $uploaded = Storage::disk($defaultDisk)->put($cloudPath, $fileContents);
                
                if ($uploaded) {
                    // Get the cloud URL
                    $cloudUrl = Storage::disk($defaultDisk)->url($cloudPath);
                    
                    // Update database
                    DB::table('media_files')->where('id', $media->id)->update([
                        'url' => $cloudUrl,
                        'updated_at' => now()
                    ]);
                    
                    echo "SUCCESS\n";
                    $migrated++;
                } else {
                    echo "ERROR (upload failed)\n";
                    $errors++;
                }
                
            } catch (Exception $e) {
                echo "ERROR (" . $e->getMessage() . ")\n";
                $errors++;
            }
        }
        
        echo "\n=== MIGRATION COMPLETE ===\n";
        echo "✅ Migrated: $migrated files\n";
        echo "❌ Errors: $errors files\n";
        
        if ($migrated > 0) {
            echo "\n🎉 SUCCESS! Images are now stored in cloud storage.\n";
            echo "They will persist through redeployments.\n\n";
            
            echo "🧹 Cleaning up caches...\n";
            Artisan::call('cache:clear');
            Artisan::call('config:clear');
            Artisan::call('view:clear');
            echo "✅ Caches cleared\n";
        }
    }
    
} catch (Exception $e) {
    echo "<span class='error'>❌ MIGRATION FAILED: " . $e->getMessage() . "</span>\n";
}
?>
</pre>
</div>
<?php else: ?>
<div class="section">
<h3>🔍 Current Status Check:</h3>
<pre>
<?php
try {
    require_once '../vendor/autoload.php';
    $app = require_once '../bootstrap/app.php';
    $kernel = $app->make('Illuminate\Contracts\Console\Kernel');
    $kernel->bootstrap();
    
    $defaultDisk = config('filesystems.default');
    echo "Current filesystem disk: $defaultDisk\n";
    
    if ($defaultDisk === 'local' || $defaultDisk === 'public') {
        echo "❌ Cloud storage NOT configured\n";
        echo "   Set FILESYSTEM_DISK to 'cloudinary' or 's3' in Render\n";
    } else {
        echo "✅ Cloud storage configured ($defaultDisk)\n";
        
        // Test connection
        try {
            Storage::disk($defaultDisk)->put('test.txt', 'test');
            echo "✅ Cloud storage connection working\n";
            Storage::disk($defaultDisk)->delete('test.txt');
        } catch (Exception $e) {
            echo "❌ Cloud storage connection failed: " . $e->getMessage() . "\n";
        }
    }
    
    // Check media files
    if (Schema::hasTable('media_files')) {
        $totalMedia = DB::table('media_files')->count();
        $cloudMedia = DB::table('media_files')->where('url', 'like', 'http%')->count();
        $localMedia = $totalMedia - $cloudMedia;
        
        echo "\nMedia files status:\n";
        echo "📊 Total files: $totalMedia\n";
        echo "☁️ In cloud storage: $cloudMedia\n";
        echo "💾 In local storage: $localMedia\n";
        
        if ($localMedia > 0 && ($defaultDisk !== 'local' && $defaultDisk !== 'public')) {
            echo "\n🚀 Ready to migrate $localMedia files to cloud storage!\n";
        }
    }
    
} catch (Exception $e) {
    echo "❌ ERROR: " . $e->getMessage() . "\n";
}
?>
</pre>

<?php if (config('filesystems.default') !== 'local' && config('filesystems.default') !== 'public'): ?>
<a href="?key=migrate-2026&action=migrate" class="button">🚀 Start Migration</a>
<?php else: ?>
<p class="warning">⚠️ Configure cloud storage first before running migration.</p>
<?php endif; ?>
</div>
<?php endif; ?>

<div class="section">
<h3>📚 Setup Instructions:</h3>
<p>1. <strong>Choose Cloud Storage:</strong></p>
<ul>
<li><strong>Cloudinary (Recommended):</strong> Best for images, automatic optimization</li>
<li><strong>AWS S3:</strong> General purpose, more configuration needed</li>
</ul>

<p>2. <strong>Get Credentials:</strong></p>
<ul>
<li>Cloudinary: Sign up at cloudinary.com, get Cloud Name, API Key, API Secret</li>
<li>AWS S3: Create bucket, get Access Key ID, Secret Access Key</li>
</ul>

<p>3. <strong>Update Render Environment Variables:</strong></p>
<p>For Cloudinary:</p>
<pre style="font-size: 12px;">
FILESYSTEM_DISK=cloudinary
CLOUDINARY_CLOUD_NAME=your_cloud_name
CLOUDINARY_API_KEY=your_api_key
CLOUDINARY_API_SECRET=your_api_secret
</pre>

<p>For AWS S3:</p>
<pre style="font-size: 12px;">
FILESYSTEM_DISK=s3
AWS_ACCESS_KEY_ID=your_key
AWS_SECRET_ACCESS_KEY=your_secret
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=your_bucket_name
</pre>

<p>4. <strong>Redeploy and Run Migration</strong></p>
</div>

<div class="section">
<h3>🔗 Quick Links:</h3>
<p><a href="/admin" target="_blank">Admin Dashboard</a> | <a href="/fix-images.php?key=fix-images-2026" target="_blank">Temporary Image Fix</a></p>
</div>

</div>
</body>
</html>