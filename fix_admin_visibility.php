<?php
// Fix common admin visibility issues
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

echo "=== FIXING ADMIN VISIBILITY ISSUES ===\n\n";

try {
    $fixed = 0;
    
    // 1. Fix page statuses - ensure pages are published
    echo "1. Checking page statuses...\n";
    $draftPages = DB::table('pages')->where('status', '!=', 'published')->count();
    if ($draftPages > 0) {
        DB::table('pages')->where('status', '!=', 'published')->update(['status' => 'published']);
        echo "   ✅ Fixed $draftPages pages (set to published)\n";
        $fixed++;
    } else {
        echo "   ✅ All pages are already published\n";
    }
    
    // 2. Fix job statuses and moderation
    if (Schema::hasTable('jb_jobs')) {
        echo "2. Checking job statuses...\n";
        $draftJobs = DB::table('jb_jobs')->where('status', '!=', 'published')->count();
        if ($draftJobs > 0) {
            DB::table('jb_jobs')->where('status', '!=', 'published')->update(['status' => 'published']);
            echo "   ✅ Fixed $draftJobs jobs (set to published)\n";
            $fixed++;
        }
        
        $pendingJobs = DB::table('jb_jobs')->where('moderation_status', '!=', 'approved')->count();
        if ($pendingJobs > 0) {
            DB::table('jb_jobs')->where('moderation_status', '!=', 'approved')->update(['moderation_status' => 'approved']);
            echo "   ✅ Fixed $pendingJobs jobs (set to approved)\n";
            $fixed++;
        }
        
        if ($draftJobs == 0 && $pendingJobs == 0) {
            echo "   ✅ All jobs are already published and approved\n";
        }
    }
    
    // 3. Fix company statuses
    if (Schema::hasTable('jb_companies')) {
        echo "3. Checking company statuses...\n";
        $draftCompanies = DB::table('jb_companies')->where('status', '!=', 'published')->count();
        if ($draftCompanies > 0) {
            DB::table('jb_companies')->where('status', '!=', 'published')->update(['status' => 'published']);
            echo "   ✅ Fixed $draftCompanies companies (set to published)\n";
            $fixed++;
        } else {
            echo "   ✅ All companies are already published\n";
        }
    }
    
    // 4. Ensure admin user has proper permissions
    echo "4. Checking admin user permissions...\n";
    $adminUser = DB::table('users')->where('email', 'admin@admin.com')->first();
    if ($adminUser) {
        // Check if user has super admin role
        $superAdminRole = DB::table('roles')->where('slug', 'super-admin')->first();
        if ($superAdminRole) {
            $hasRole = DB::table('role_users')
                ->where('user_id', $adminUser->id)
                ->where('role_id', $superAdminRole->id)
                ->exists();
                
            if (!$hasRole) {
                DB::table('role_users')->insert([
                    'user_id' => $adminUser->id,
                    'role_id' => $superAdminRole->id,
                    'created_at' => now(),
                    'updated_at' => now()
                ]);
                echo "   ✅ Added super-admin role to admin user\n";
                $fixed++;
            } else {
                echo "   ✅ Admin user already has super-admin role\n";
            }
        }
    }
    
    // 5. Clear all caches
    echo "5. Clearing caches...\n";
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('view:clear');
    Artisan::call('route:clear');
    echo "   ✅ All caches cleared\n";
    
    // 6. Optimize for production
    echo "6. Optimizing...\n";
    Artisan::call('config:cache');
    Artisan::call('route:cache');
    Artisan::call('view:cache');
    echo "   ✅ Optimized for production\n";
    
    echo "\n🎉 Fixed $fixed issues!\n";
    
    // Show final stats
    echo "\n=== FINAL STATS ===\n";
    echo "Published pages: " . DB::table('pages')->where('status', 'published')->count() . "\n";
    if (Schema::hasTable('jb_jobs')) {
        echo "Published jobs: " . DB::table('jb_jobs')->where('status', 'published')->count() . "\n";
        echo "Approved jobs: " . DB::table('jb_jobs')->where('moderation_status', 'approved')->count() . "\n";
    }
    if (Schema::hasTable('jb_companies')) {
        echo "Published companies: " . DB::table('jb_companies')->where('status', 'published')->count() . "\n";
    }
    
} catch (Exception $e) {
    echo "❌ ERROR: " . $e->getMessage() . "\n";
    echo "Stack trace:\n" . $e->getTraceAsString() . "\n";
}

echo "\n=== DONE ===\n";
?>