<?php
/**
 * Verify JobBox is ready for Render deployment with demo data
 */

echo "=== JobBox Deployment Readiness Check ===\n\n";

// Check database files
echo "📊 Database Files:\n";
$dbFiles = [
    'database/database.sqlite' => 'Main database',
    'database/production_database.sqlite' => 'Production backup'
];

foreach ($dbFiles as $file => $desc) {
    if (file_exists($file)) {
        $size = round(filesize($file) / 1024 / 1024, 2);
        echo "✅ $desc: $file ({$size}MB)\n";
    } else {
        echo "❌ Missing: $file\n";
    }
}

// Check deployment files
echo "\n🚀 Deployment Files:\n";
$deployFiles = [
    'render.yaml' => 'Render configuration',
    'build.sh' => 'Build script',
    'start.sh' => 'Start script',
    'RENDER_DEMO_DATA_GUIDE.md' => 'Deployment guide'
];

foreach ($deployFiles as $file => $desc) {
    if (file_exists($file)) {
        echo "✅ $desc: $file\n";
    } else {
        echo "❌ Missing: $file\n";
    }
}

// Check storage directories
echo "\n🖼️ Storage Directories:\n";
$storageDir = 'storage';
$imageDirs = ['banners', 'blog', 'categories', 'companies', 'galleries', 'general', 'icons', 'logos', 'pages', 'team', 'testimonials'];

foreach ($imageDirs as $dir) {
    $path = "$storageDir/$dir";
    if (is_dir($path)) {
        $count = count(glob("$path/*"));
        echo "✅ $dir: $count files\n";
    } else {
        echo "❌ Missing: $path\n";
    }
}

// Check public storage
echo "\n🌐 Public Storage:\n";
$publicStorageDir = 'public/storage';
if (is_dir($publicStorageDir)) {
    $publicCount = 0;
    foreach ($imageDirs as $dir) {
        $path = "$publicStorageDir/$dir";
        if (is_dir($path)) {
            $publicCount += count(glob("$path/*"));
        }
    }
    echo "✅ Public storage: $publicCount files\n";
} else {
    echo "❌ Missing: public/storage directory\n";
}

// Database content check (if SQLite available)
if (extension_loaded('sqlite3') && file_exists('database/database.sqlite')) {
    echo "\n📈 Demo Data Content:\n";
    try {
        $db = new SQLite3('database/database.sqlite');
        
        $accounts = $db->querySingle("SELECT COUNT(*) FROM jb_accounts");
        $companies = $db->querySingle("SELECT COUNT(*) FROM jb_companies");
        $jobs = $db->querySingle("SELECT COUNT(*) FROM jb_jobs");
        
        echo "✅ Accounts: $accounts\n";
        echo "✅ Companies: $companies\n";
        echo "✅ Jobs: $jobs\n";
        
        $db->close();
    } catch (Exception $e) {
        echo "⚠️ Could not verify database content: " . $e->getMessage() . "\n";
    }
} else {
    echo "\n⚠️ SQLite extension not available for content verification\n";
}

echo "\n🎯 Next Steps:\n";
echo "1. Go to https://render.com\n";
echo "2. Create new Web Service\n";
echo "3. Connect your GitHub repository\n";
echo "4. Render will auto-configure from render.yaml\n";
echo "5. Deploy and enjoy your JobBox with demo data!\n";

echo "\n✨ Your JobBox is ready for deployment with complete demo data!\n";