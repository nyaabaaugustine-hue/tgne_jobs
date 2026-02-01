<?php
// Debug why admin pages show empty even though data exists
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

echo "=== ADMIN PAGES DEBUG ===\n\n";

try {
    // Check if we're in admin context
    echo "App URL: " . config('app.url') . "\n";
    echo "Admin Dir: " . config('app.admin_dir', 'admin') . "\n\n";
    
    // Check pages table
    echo "=== PAGES DEBUG ===\n";
    $totalPages = DB::table('pages')->count();
    echo "Total pages in DB: $totalPages\n";
    
    if ($totalPages > 0) {
        // Check page statuses
        $pagesByStatus = DB::table('pages')
            ->select('status', DB::raw('count(*) as count'))
            ->groupBy('status')
            ->get();
            
        echo "Pages by status:\n";
        foreach ($pagesByStatus as $status) {
            echo "  - {$status->status}: {$status->count}\n";
        }
        
        // Show sample pages
        $samplePages = DB::table('pages')
            ->select('id', 'name', 'status', 'created_at')
            ->orderBy('created_at', 'desc')
            ->limit(5)
            ->get();
            
        echo "\nSample pages:\n";
        foreach ($samplePages as $page) {
            echo "  - ID: {$page->id}, Name: {$page->name}, Status: {$page->status}\n";
        }
    }
    
    // Check jobs
    echo "\n=== JOBS DEBUG ===\n";
    if (Schema::hasTable('jb_jobs')) {
        $totalJobs = DB::table('jb_jobs')->count();
        echo "Total jobs in DB: $totalJobs\n";
        
        if ($totalJobs > 0) {
            $jobsByStatus = DB::table('jb_jobs')
                ->select('status', DB::raw('count(*) as count'))
                ->groupBy('status')
                ->get();
                
            echo "Jobs by status:\n";
            foreach ($jobsByStatus as $status) {
                echo "  - {$status->status}: {$status->count}\n";
            }
            
            // Check moderation status
            $jobsByModeration = DB::table('jb_jobs')
                ->select('moderation_status', DB::raw('count(*) as count'))
                ->groupBy('moderation_status')
                ->get();
                
            echo "Jobs by moderation status:\n";
            foreach ($jobsByModeration as $status) {
                echo "  - {$status->moderation_status}: {$status->count}\n";
            }
        }
    }
    
    // Check users and permissions
    echo "\n=== USERS & PERMISSIONS DEBUG ===\n";
    $totalUsers = DB::table('users')->count();
    echo "Total users: $totalUsers\n";
    
    $adminUser = DB::table('users')->where('email', 'admin@admin.com')->first();
    if ($adminUser) {
        echo "Admin user found: {$adminUser->first_name} {$adminUser->last_name}\n";
        echo "Admin user ID: {$adminUser->id}\n";
        
        // Check user roles
        if (Schema::hasTable('role_users')) {
            $userRoles = DB::table('role_users')
                ->join('roles', 'role_users.role_id', '=', 'roles.id')
                ->where('role_users.user_id', $adminUser->id)
                ->select('roles.name', 'roles.slug')
                ->get();
                
            echo "Admin user roles:\n";
            foreach ($userRoles as $role) {
                echo "  - {$role->name} ({$role->slug})\n";
            }
        }
    } else {
        echo "❌ Admin user not found!\n";
    }
    
    // Check settings that might affect visibility
    echo "\n=== SETTINGS DEBUG ===\n";
    $importantSettings = [
        'admin_title',
        'admin_logo',
        'enable_cache',
        'cache_time_site_map'
    ];
    
    foreach ($importantSettings as $key) {
        $setting = DB::table('settings')->where('key', $key)->first();
        if ($setting) {
            echo "{$key}: {$setting->value}\n";
        } else {
            echo "{$key}: NOT SET\n";
        }
    }
    
    // Check for any cache tables
    echo "\n=== CACHE DEBUG ===\n";
    if (Schema::hasTable('cache')) {
        $cacheCount = DB::table('cache')->count();
        echo "Cache entries: $cacheCount\n";
    }
    
    // Check session driver
    echo "Session driver: " . config('session.driver') . "\n";
    if (config('session.driver') === 'database' && Schema::hasTable('sessions')) {
        $sessionCount = DB::table('sessions')->count();
        echo "Active sessions: $sessionCount\n";
    }
    
} catch (Exception $e) {
    echo "❌ ERROR: " . $e->getMessage() . "\n";
    echo "Stack trace:\n" . $e->getTraceAsString() . "\n";
}

echo "\n=== END DEBUG ===\n";
?>