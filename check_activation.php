<?php
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Illuminate\Support\Facades\DB;

try {
    echo "=== Account Status Check ===\n";
    
    // Check all users
    $users = DB::table('users')->get();
    echo "Total users in database: " . count($users) . "\n\n";
    
    foreach ($users as $user) {
        echo "User: {$user->email}\n";
        echo "  Username: {$user->username}\n";
        echo "  Super User: {$user->super_user}\n";
        echo "  Email Verified: " . ($user->email_verified_at ? 'Yes (' . $user->email_verified_at . ')' : 'No') . "\n";
        echo "  Created: {$user->created_at}\n";
        echo "  ---\n";
    }
    
    // Specifically check admin@admin.com
    $admin = DB::table('users')->where('email', 'admin@admin.com')->first();
    if ($admin) {
        echo "\n=== Admin Account Details ===\n";
        echo "Email: {$admin->email}\n";
        echo "Username: {$admin->username}\n";
        echo "Email Verified: " . ($admin->email_verified_at ? 'Yes' : 'No') . "\n";
        if (!$admin->email_verified_at) {
            echo "Activating account now...\n";
            DB::table('users')
                ->where('email', 'admin@admin.com')
                ->update([
                    'email_verified_at' => now(),
                    'updated_at' => now()
                ]);
            echo "✅ Account activated!\n";
        }
    } else {
        echo "❌ Admin account not found!\n";
    }
    
} catch (Exception $e) {
    echo "Error: " . $e->getMessage() . "\n";
}
?>