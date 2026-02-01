<?php
/**
 * Database Connection Debug Script
 * This script helps debug database connectivity issues
 */

echo "=== Database Connection Debug ===\n";
echo "PHP Version: " . PHP_VERSION . "\n";
echo "Current Time: " . date('Y-m-d H:i:s') . "\n\n";

// Check loaded PDO drivers
echo "=== Available PDO Drivers ===\n";
$drivers = PDO::getAvailableDrivers();
foreach ($drivers as $driver) {
    echo "✓ $driver\n";
}
echo "\n";

// Check environment variables
echo "=== Environment Varia