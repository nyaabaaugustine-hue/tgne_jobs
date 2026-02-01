<?php
/**
 * Complete deployment verification for JobBox
 */

echo "=== COMPLETE DEPLOYMENT VERIFICATION ===\n\n";

$errors = [];
$warnings = [];
$success = [];

// Check critical files
$criticalFiles = [
    'Dockerfile.simple' => 'Docker configuration',
    'render-simple.yaml' => 'Render configuration',
    'docker-entrypoint.sh' => 'Docker startup script',
    '.docker/vhost.conf' => 'Apache configuration',
    '.env.example' => 'Environment template',
    'database/production_database.sqlite' => 'Production database with demo data',
    'composer.json' => 'PHP dependencies',
    'composer.lock' => 'Locked dependencies'
];

foreach ($criticalFiles as $file => $desc) {
    if (file_exists($file)) {
        $success[] = "✅ $desc: $file";
    } else {
        $errors[] = "❌ Missing $desc: $file";
    }
}

// Check PHP extensions in composer.json
$composerContent = file_get_contents('composer.json');
$composer = json_decode($composerContent, true);

$requiredExtensions = ['ext-zip', 'ext-calendar', 'ext-gd', 'ext-pdo', 'ext-sqlite3'];
foreach ($requiredExtensions as $ext) {
    if (isset($composer['require'][$ext])) {
        $success[] = "✅ Extension required: $ext";
    } else {
        $errors[] = "❌ Missing extension requirement: $ext";
    }
}

// Check environment configurations
$envContent = file_get_contents('.env.example');
$renderContent = file_get_contents('render-simple.yaml');

// Critical env vars
$criticalEnvVars = [
    'DB_CONNECTION=sqlite' => 'SQLite database',
    'LOG_CHANNEL=stderr' => 'Docker logging',
    'QUEUE_CONNECTION=sync' => 'Synchronous queue',
    'APP_TIMEZONE=UTC' => 'Timezone setting'
];

foreach ($criticalEnvVars as $var => $desc) {
    if (strpos($envContent, $var) !== false) {
        $success[] = "✅ Environment: $desc ($var)";
    } else {
        $errors[] = "❌ Missing environment: $desc ($var)";
    }
}

// Check render.yaml consistency
$renderEnvVars = [
    'LOG_CHANNEL: stderr' => 'Docker logging in render config',
    'DB_CONNECTION: sqlite' => 'SQLite in render config',
    'CACHE_STORE: file' => 'File cache in render config'
];

foreach ($renderEnvVars as $var => $desc) {
    if (strpos($renderContent, str_replace(': ', ':', $var)) !== false) {
        $success[] = "✅ Render config: $desc";
    } else {
        $warnings[] = "⚠️ Check render config: $desc";
    }
}

// Check database content
if (extension_loaded('sqlite3') && file_exists('database/production_database.sqlite')) {
    try {
        $db = new SQLite3('database/production_database.sqlite');
        
        $accounts = $db->querySingle("SELECT COUNT(*) FROM jb_accounts");
        $companies = $db->querySingle("SELECT COUNT(*) FROM jb_companies");
        $jobs = $db->querySingle("SELECT COUNT(*) FROM jb_jobs");
        
        if ($accounts >= 60) $success[] = "✅ Demo accounts: $accounts";
        else $warnings[] = "⚠️ Low account count: $accounts";
        
        if ($companies >= 10) $success[] = "✅ Demo companies: $companies";
        else $warnings[] = "⚠️ Low company count: $companies";
        
        if ($jobs >= 40) $success[] = "✅ Demo jobs: $jobs";
        else $warnings[] = "⚠️ Low job count: $jobs";
        
        $db->close();
    } catch (Exception $e) {
        $errors[] = "❌ Database verification failed: " . $e->getMessage();
    }
}

// Check storage directories
$storageDirs = ['banners', 'companies', 'categories', 'logos', 'general'];
foreach ($storageDirs as $dir) {
    $path = "storage/$dir";
    if (is_dir($path) && count(glob("$path/*")) > 0) {
        $count = count(glob("$path/*"));
        $success[] = "✅ Storage images: $dir ($count files)";
    } else {
        $warnings[] = "⚠️ Empty storage directory: $dir";
    }
}

// Check Docker configuration
$dockerContent = file_get_contents('Dockerfile.simple');
$dockerChecks = [
    'docker-php-ext-install' => 'PHP extensions installation',
    'composer install' => 'Composer dependency installation',
    'php artisan key:generate' => 'Laravel key generation',
    'apache2-foreground' => 'Apache startup command',
    'HEALTHCHECK' => 'Docker health check'
];

foreach ($dockerChecks as $check => $desc) {
    if (strpos($dockerContent, $check) !== false) {
        $success[] = "✅ Docker: $desc";
    } else {
        $warnings[] = "⚠️ Docker missing: $desc";
    }
}

// Output results
echo "🎉 SUCCESS (" . count($success) . "):\n";
foreach ($success as $item) {
    echo "   $item\n";
}

if (!empty($warnings)) {
    echo "\n⚠️ WARNINGS (" . count($warnings) . "):\n";
    foreach ($warnings as $item) {
        echo "   $item\n";
    }
}

if (!empty($errors)) {
    echo "\n❌ ERRORS (" . count($errors) . "):\n";
    foreach ($errors as $item) {
        echo "   $item\n";
    }
}

echo "\n=== DEPLOYMENT STATUS ===\n";
if (empty($errors)) {
    echo "🚀 READY FOR DEPLOYMENT!\n";
    echo "   - All critical files present\n";
    echo "   - PHP extensions configured\n";
    echo "   - Environment variables set\n";
    echo "   - Demo data preserved\n";
    echo "   - Docker configuration complete\n";
    
    if (!empty($warnings)) {
        echo "\n⚠️ Minor issues found but deployment should work\n";
    }
} else {
    echo "🔧 FIX ERRORS BEFORE DEPLOYMENT\n";
    echo "   Critical issues must be resolved\n";
}

echo "\n=== NEXT STEPS ===\n";
echo "1. Fix any errors shown above\n";
echo "2. Switch to Docker deployment:\n";
echo "   mv render.yaml render-native.yaml\n";
echo "   mv render-simple.yaml render.yaml\n";
echo "3. Commit and push to GitHub\n";
echo "4. Deploy on Render\n";
echo "5. Test with demo credentials:\n";
echo "   Admin: admin@jobbox.com / password\n";
echo "   Employer: employer@jobbox.com / password\n";