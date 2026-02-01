<?php
// Simple PHP test
echo "PHP is working!<br>";
echo "PHP Version: " . PHP_VERSION . "<br>";
echo "Current directory: " . __DIR__ . "<br>";
echo "Parent directory exists: " . (is_dir(__DIR__ . '/..') ? 'YES' : 'NO') . "<br>";
echo "Vendor autoload exists: " . (file_exists(__DIR__ . '/../vendor/autoload.php') ? 'YES' : 'NO') . "<br>";
echo "Bootstrap app exists: " . (file_exists(__DIR__ . '/../bootstrap/app.php') ? 'YES' : 'NO') . "<br>";
echo "Database file exists: " . (file_exists(__DIR__ . '/../database/database.sqlite') ? 'YES' : 'NO') . "<br>";

// Test autoloader
try {
    require __DIR__ . '/../vendor/autoload.php';
    echo "Autoloader loaded successfully<br>";
} catch (Exception $e) {
    echo "Autoloader failed: " . $e->getMessage() . "<br>";
}

// Test bootstrap
try {
    $app = require_once __DIR__ . '/../bootstrap/app.php';
    echo "Laravel bootstrap successful<br>";
} catch (Exception $e) {
    echo "Laravel bootstrap failed: " . $e->getMessage() . "<br>";
}