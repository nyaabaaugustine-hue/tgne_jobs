<?php
require_once 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

echo "=== Testing Login Functionality ===\n";

// Get the admin user
$adminUser = DB::table('users')->where('email', 'admin@admin.com')->first();
if (!$adminUser) {
    echo "ERROR: Admin user not found!\n";
    exit(1);
}

echo "Testing credentials for user ID: {$adminUser->id}\n";
echo "Email: {$adminUser->email}\n";
echo "Username: {$adminUser->username}\n";

// Verify the password manually (admin123 should hash to what's in the DB)
$passwordMatch = Hash::check('admin123', $adminUser->password);
echo "Password correct: " . ($passwordMatch ? 'YES' : 'NO') . "\n";

// Check if user is active in Botble system
$activation = DB::table('activations')->where('user_id', $adminUser->id)->where('completed', 1)->first();
echo "User activated in Botble: " . ($activation ? 'YES' : 'NO') . "\n";

if ($passwordMatch && $activation) {
    echo "\n✅ ALL CHECKS PASSED: User should be able to log in!\n";
    echo "Credentials: admin@admin.com / admin123\n";
    echo "Make sure to go to: http://127.0.0.1:8000/admin\n";
} else {
    echo "\n❌ ISSUES FOUND:\n";
    if (!$passwordMatch) {
        echo "- Password mismatch\n";
    }
    if (!$activation) {
        echo "- User not activated in Botble system\n";
    }
}

echo "\n=== System Status ===\n";
echo "Server running on: http://127.0.0.1:8000\n";
echo "Admin panel: http://127.0.0.1:8000/admin\n";
echo "Credentials: admin@admin.com / admin123\n";

?>