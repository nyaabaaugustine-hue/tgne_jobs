<?php
/**
 * Post-deployment script to ensure admin user is activated
 * This script should run after each deployment to ensure the admin user is properly activated
 */

require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';

// Set the application environment
$app->detectEnvironment(function () {
    return $_ENV['APP_ENV'] ?? 'production';
});

$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Illuminate\Support\Facades\Artisan;

echo "Running admin user activation...\n";

try {
    // Run the database seeder to ensure admin user is activated
    Artisan::call('db:seed', ['--class' => 'AdminUserActivationSeeder', '--force' => true]);
    
    echo "Admin user activation completed successfully!\n";
    echo Artisan::output();
} catch (Exception $e) {
    echo "Error during admin user activation: " . $e->getMessage() . "\n";
    exit(1);
}

echo "Post-deployment script completed.\n";
?>