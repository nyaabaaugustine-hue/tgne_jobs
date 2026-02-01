<?php
// Check what data exists in the database
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

echo "=== DATABASE DATA CHECK ===\n\n";

try {
    // Database info
    echo "Database Connection: " . config('database.default') . "\n";
    echo "Database Host: " . config('database.connections.' . config('database.default') . '.host') . "\n";
    echo "Database Name: " . config('database.connections.' . config('database.default') . '.database') . "\n\n";
    
    // Check main tables
    $tables = [
        'users' => 'Users',
        'jb_jobs' => 'Jobs', 
        'jb_companies' => 'Companies',
        'jb_applications' => 'Job Applications',
        'jb_accounts' => 'Accounts',
        'jb_categories' => 'Job Categories',
        'jb_job_types' => 'Job Types',
        'jb_packages' => 'Packages',
        'settings' => 'Settings'
    ];
    
    echo "=== TABLE COUNTS ===\n";
    foreach ($tables as $table => $name) {
        try {
            if (Schema::hasTable($table)) {
                $count = DB::table($table)->count();
                echo sprintf("%-20s: %d\n", $name, $count);
            } else {
                echo sprintf("%-20s: TABLE MISSING!\n", $name);
            }
        } catch (Exception $e) {
            echo sprintf("%-20s: ERROR - %s\n", $name, $e->getMessage());
        }
    }
    
    echo "\n=== SAMPLE DATA ===\n";
    
    // Check for admin user
    $adminUser = DB::table('users')->where('email', 'admin@admin.com')->first();
    if ($adminUser) {
        echo "✅ Admin user exists: {$adminUser->first_name} {$adminUser->last_name}\n";
    } else {
        echo "❌ Admin user not found\n";
    }
    
    // Check recent jobs
    if (Schema::hasTable('jb_jobs')) {
        $recentJobs = DB::table('jb_jobs')->orderBy('created_at', 'desc')->limit(3)->get(['id', 'name', 'status']);
        if ($recentJobs->count() > 0) {
            echo "\n📋 Recent Jobs:\n";
            foreach ($recentJobs as $job) {
                echo "  - {$job->name} (Status: {$job->status})\n";
            }
        } else {
            echo "\n❌ No jobs found\n";
        }
    }
    
    // Check companies
    if (Schema::hasTable('jb_companies')) {
        $companies = DB::table('jb_companies')->limit(3)->get(['id', 'name']);
        if ($companies->count() > 0) {
            echo "\n🏢 Companies:\n";
            foreach ($companies as $company) {
                echo "  - {$company->name}\n";
            }
        } else {
            echo "\n❌ No companies found\n";
        }
    }
    
    // Check settings
    if (Schema::hasTable('settings')) {
        $adminTitle = DB::table('settings')->where('key', 'admin_title')->first();
        if ($adminTitle) {
            echo "\n⚙️ Admin Title: {$adminTitle->value}\n";
        }
    }
    
    echo "\n=== CACHE INFO ===\n";
    echo "Cache Driver: " . config('cache.default') . "\n";
    echo "Session Driver: " . config('session.driver') . "\n";
    
} catch (Exception $e) {
    echo "❌ ERROR: " . $e->getMessage() . "\n";
    echo "Stack trace:\n" . $e->getTraceAsString() . "\n";
}

echo "\n=== END CHECK ===\n";
?>