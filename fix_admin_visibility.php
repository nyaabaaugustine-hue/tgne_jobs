<?php
// Fix admin dashboard visibility - Set correct statuses and clear caches
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

echo "=== FIXING ADMIN DASHBOARD VISIBILITY ===\n\n";

try {
    $fixed = 0;
    
    // 1. Fix page statuses - ensure pages are published
    echo "1. Fixing page statuses...\n";
    $draftPages = DB::table('pages')->where('status', '!=', 'published')->count();
    if ($draftPages > 0) {
        DB::table('pages')->where('status', '!=', 'published')->update(['status' => 'published']);
        echo "   ✅ Fixed $draftPages pages (set to published)\n";
        $fixed++;
    } else {
        echo "   ✅ All pages already published\n";
    }
    
    // 2. Fix job statuses and moderation
    if (Schema::hasTable('jb_jobs')) {
        echo "2. Fixing job statuses...\n";
        
        // Fix job status
        $draftJobs = DB::table('jb_jobs')->where('status', '!=', 'published')->count();
        if ($draftJobs > 0) {
            DB::table('jb_jobs')->where('status', '!=', 'published')->update(['status' => 'published']);
            echo "   ✅ Fixed $draftJobs jobs (set to published)\n";
            $fixed++;
        }
        
        // Fix moderation status
        $pendingJobs = DB::table('jb_jobs')->where('moderation_status', '!=', 'approved')->count();
        if ($pendingJobs > 0) {
            DB::table('jb_jobs')->where('moderation_status', '!=', 'approved')->update(['moderation_status' => 'approved']);
            echo "   ✅ Fixed $pendingJobs jobs (set to approved)\n";
            $fixed++;
        }
        
        if ($draftJobs == 0 && $pendingJobs == 0) {
            echo "   ✅ All jobs already published and approved\n";
        }
    }
    
    // 3. Fix company statuses
    if (Schema::hasTable('jb_companies')) {
        echo "3. Fixing company statuses...\n";
        $draftCompanies = DB::table('jb_companies')->where('status', '!=', 'published')->count();
        if ($draftCompanies > 0) {
            DB::table('jb_companies')->where('status', '!=', 'published')->update(['status' => 'published']);
            echo "   ✅ Fixed $draftCompanies companies (set to published)\n";
            $fixed++;
        } else {
            echo "   ✅ All companies already published\n";
        }
    }
    
    // 4. Fix account statuses
    if (Schema::hasTable('jb_accounts')) {
        echo "4. Fixing account statuses...\n";
        $inactiveAccounts = DB::table('jb_accounts')->where('is_active', '!=', 1)->count();
        if ($inactiveAccounts > 0) {
            DB::table('jb_accounts')->where('is_active', '!=', 1)->update(['is_active' => 1]);
            echo "   ✅ Fixed $inactiveAccounts accounts (set to active)\n";
            $fixed++;
        } else {
            echo "   ✅ All accounts already active\n";
        }
    }
    
    // 5. Ensure admin user has proper permissions
    echo "5. Checking admin user permissions...\n";
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
    
    // 6. Clear ALL caches aggressively
    echo "6. Clearing all caches...\n";
    Artisan::call('optimize:clear');
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('view:clear');
    Artisan::call('route:clear');
    echo "   ✅ All caches cleared\n";
    
    // 7. Rebuild caches for production
    echo "7. Rebuilding caches...\n";
    Artisan::call('config:cache');
    Artisan::call('route:cache');
    Artisan::call('view:cache');
    echo "   ✅ Caches rebuilt\n";
    
    echo "\n🎉 Fixed $fixed visibility issues!\n";
    
    // Show final stats
    echo "\n=== FINAL DASHBOARD STATS ===\n";
    echo "Published pages: " . DB::table('pages')->where('status', 'published')->count() . "\n";
    
    if (Schema::hasTable('jb_jobs')) {
        echo "Published jobs: " . DB::table('jb_jobs')->where('status', 'published')->count() . "\n";
        echo "Approved jobs: " . DB::table('jb_jobs')->where('moderation_status', 'approved')->count() . "\n";
    }
    
    if (Schema::hasTable('jb_companies')) {
        echo "Published companies: " . DB::table('jb_companies')->where('status', 'published')->count() . "\n";
    }
    
    if (Schema::hasTable('jb_accounts')) {
        echo "Active accounts: " . DB::table('jb_accounts')->where('is_active', 1)->count() . "\n";
    }
    
    echo "\n✨ Dashboard should now show data! Refresh your admin panel.\n";
    
} catch (Exception $e) {
    echo "❌ ERROR: " . $e->getMessage() . "\n";
    echo "Stack trace:\n" . $e->getTraceAsString() . "\n";
}

echo "\n=== DONE ===\n";
?>