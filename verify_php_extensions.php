<?php
/**
 * Verify PHP extensions required for JobBox deployment
 */

echo "=== PHP Extensions Verification ===\n\n";

$requiredExtensions = [
    'zip' => 'Required for Excel/CSV exports and file handling',
    'calendar' => 'Required for Arabic date handling',
    'pdo' => 'Required for database connections',
    'pdo_sqlite' => 'Required for SQLite database',
    'mbstring' => 'Required for multi-byte string handling',
    'gd' => 'Required for image processing',
    'curl' => 'Required for HTTP requests',
    'json' => 'Required for JSON handling',
    'sqlite3' => 'Required for SQLite operations'
];

$missing = [];
$installed = [];

foreach ($requiredExtensions as $ext => $description) {
    if (extension_loaded($ext)) {
        $installed[] = $ext;
        echo "✅ $ext - $description\n";
    } else {
        $missing[] = $ext;
        echo "❌ $ext - $description (MISSING)\n";
    }
}

echo "\n=== Summary ===\n";
echo "✅ Installed: " . count($installed) . " extensions\n";
echo "❌ Missing: " . count($missing) . " extensions\n";

if (empty($missing)) {
    echo "\n🎉 All required PHP extensions are installed!\n";
    echo "Your deployment should work without platform requirement issues.\n";
} else {
    echo "\n⚠️ Missing extensions need to be installed:\n";
    foreach ($missing as $ext) {
        echo "   - $ext\n";
    }
    echo "\nAdd to Dockerfile before composer install:\n";
    echo "RUN docker-php-ext-install " . implode(' ', $missing) . "\n";
}

echo "\n=== PHP Version Info ===\n";
echo "PHP Version: " . PHP_VERSION . "\n";
echo "PHP SAPI: " . PHP_SAPI . "\n";

// Test specific functionality
echo "\n=== Functionality Tests ===\n";

// Test zip
if (extension_loaded('zip')) {
    echo "✅ ZIP: Can create archives\n";
} else {
    echo "❌ ZIP: Cannot create Excel/CSV exports\n";
}

// Test calendar
if (extension_loaded('calendar')) {
    echo "✅ Calendar: Can handle date conversions\n";
} else {
    echo "❌ Calendar: Arabic date handling will fail\n";
}

// Test SQLite
if (extension_loaded('pdo_sqlite')) {
    echo "✅ SQLite: Can connect to database\n";
    try {
        $pdo = new PDO('sqlite::memory:');
        echo "✅ SQLite: Connection test successful\n";
    } catch (Exception $e) {
        echo "❌ SQLite: Connection test failed - " . $e->getMessage() . "\n";
    }
} else {
    echo "❌ SQLite: Cannot connect to database\n";
}

echo "\n=== Deployment Ready ===\n";
if (empty($missing)) {
    echo "🚀 Ready for production deployment!\n";
} else {
    echo "🔧 Fix missing extensions before deployment.\n";
}