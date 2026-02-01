<?php
// Debug script to check dashboard data
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

echo "=== DASHBOARD DATA DEBUG ===\n\n";

try {
    // Check database connection
    echo "Database Connection: " . config('database.default') . "\n";
    echo "Database Name: " . config('database.connections.' . config('database.default') . '.database') . "\n\n";
    
    // Check users table
    $userCount = DB::table('users')->count();
    echo "Users count: $userCount\n";
    
    if ($userCount > 0) {
        $adminUser = DB::table('users')->where('email', 'admin@admin.com')->first();
        echo "Admin user exists: " . ($adminUser ? 'YES' : 'NO') . "\n";
        if ($adminUser) {
            echo "Admin user ID: " . $adminUser->id . "\n";
            echo "Admin user name: " . $adminUser->first_name . " " . $adminUser->last_name . "\n";
        }
    }
    
    // Check jobs table
    if (Schema::hasTable('jb_jobs')) {
        $jobCount = DB::table('jb_jobs')->count();
        echo "Jobs count: $jobCount\n";
        
        if ($jobCount > 0) {
            $recentJobs = DB::table('jb_jobs')->orderBy('created_at', 'desc')->limit(3)->get(['id', 'name', 'status']);
            echo "Recent jobs:\n";
            foreach ($recentJobs as $job) {
                echo "  - ID: {$job->id}, Name: {$job->name}, Status: {$job->status}\n";
            }
        }
    }
    
    // Check companies table
    if (Schema::hasTable('jb_companies')) {
        $companyCount = DB::table('jb_companies')->count();
        echo "Companies count: $companyCount\n";
    }
    
    // Check accounts table
    if (Schema::hasTable('jb_accounts')) {
        $accountCount = DB::table('jb_accounts')->count();
        echo "Accounts count: $accountCount\n";
    }
    
    // Check settings
    if (Schema::hasTable('settings')) {
        $settingsCount = DB::table('settings')->count();
        echo "Settings count: $settingsCount\n";
        
        $adminTitle = DB::table('settings')->where('key', 'admin_title')->first();
        if ($adminTitle) {
            echo "Admin title: " . $adminTitle->value . "\n";
        }
    }
    
    // Check cache
    echo "\nCache driver: " . config('cache.default') . "\n";
    
    // Check session
    echo "Session driver: " . config('session.driver') . "\n";
    
} catch (Exception $e) {
    echo "ERROR: " . $e->getMessage() . "\n";
    echo "Stack trace:\n" . $e->getTraceAsString() . "\n";
}

echo "\n=== END DEBUG ===\n";
?>