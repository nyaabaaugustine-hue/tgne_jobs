<?php
// Production setup script - Run migrations and seed demo data
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

echo "🚀 Setting up production data...\n\n";

try {
    // Check current database connection
    echo "Database: " . config('database.default') . "\n";
    echo "Host: " . config('database.connections.' . config('database.default') . '.host') . "\n\n";
    
    // Run migrations
    echo "📋 Running database migrations...\n";
    Artisan::call('migrate', ['--force' => true]);
    echo Artisan::output();
    
    // Check if demo data already exists
    $userCount = DB::table('users')->count();
    $jobCount = DB::table('jb_jobs')->count();
    
    echo "Current data:\n";
    echo "- Users: $userCount\n";
    echo "- Jobs: $jobCount\n\n";
    
    if ($userCount == 0 || $jobCount == 0) {
        echo "📊 Seeding demo data...\n";
        Artisan::call('db:seed', [
            '--class' => 'Database\\Seeders\\ProductionDataSeeder',
            '--force' => true
        ]);
        echo Artisan::output();
        
        // Verify seeding worked
        $newUserCount = DB::table('users')->count();
        $newJobCount = DB::table('jb_jobs')->count();
        
        echo "After seeding:\n";
        echo "- Users: $newUserCount\n";
        echo "- Jobs: $newJobCount\n\n";
    } else {
        echo "✅ Demo data already exists, skipping seeding\n\n";
    }
    
    // Clear all caches
    echo "🧹 Clearing caches...\n";
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('view:clear');
    Artisan::call('route:clear');
    
    // Optimize for production
    echo "⚡ Optimizing for production...\n";
    Artisan::call('config:cache');
    Artisan::call('route:cache');
    Artisan::call('view:cache');
    
    echo "🎉 Setup completed successfully!\n\n";
    
    // Show final stats
    echo "=== FINAL DATABASE STATS ===\n";
    echo "Users: " . DB::table('users')->count() . "\n";
    echo "Jobs: " . DB::table('jb_jobs')->count() . "\n";
    echo "Companies: " . DB::table('jb_companies')->count() . "\n";
    echo "Applications: " . DB::table('jb_applications')->count() . "\n";
    echo "Categories: " . DB::table('jb_categories')->count() . "\n";
    
} catch (Exception $e) {
    echo "❌ Error: " . $e->getMessage() . "\n";
    echo "Stack trace:\n" . $e->getTraceAsString() . "\n";
}
?>