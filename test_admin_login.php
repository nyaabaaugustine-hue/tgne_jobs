<?php
/**
 * Test script to verify admin login functionality
 */

require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use Illuminate\Support\Facades\Auth;
use Botble\ACL\Models\User;
use Illuminate\Support\Facades\DB;

echo "=== Testing Admin Authentication ===\n";

// Check if admin user exists
$adminUser = User::where('email', 'admin@admin.com')->first();
if (!$adminUser) {
    echo "ERROR: Admin user not found in Botble ACL Users table!\n";
    exit(1);
}

echo "Admin user found:\n";
echo "- ID: " . $adminUser->id . "\n";
echo "- Email: " . $adminUser->email . "\n";
echo "- Super User: " . ($adminUser->super_user ? 'Yes' : 'No') . "\n";
echo "- Activated: " . ($adminUser->activated ? 'Yes' : 'No') . "\n";
echo "- Manage Supers: " . ($adminUser->manage_supers ? 'Yes' : 'No') . "\n";

// Test authentication with the correct guard
$credentials = [
    'email' => 'admin@admin.com',
    'password' => 'admin123'
];

echo "\n=== Testing Authentication ===\n";

// Try authenticating with the default guard (which should use the 'users' provider with Botble ACL User model)
if (Auth::guard()->attempt($credentials)) {
    echo "SUCCESS: Authentication passed with default guard\n";
    $user = Auth::guard()->user();
    echo "Authenticated user: " . $user->email . "\n";
    Auth::guard()->logout(); // Logout to reset
} else {
    echo "FAILED: Authentication failed with default guard\n";
}

// Since Botble CMS doesn't seem to have an explicit 'admin' guard,
// the authentication should work with the default guard that uses the Botble ACL User model
echo "\n=== Checking Activations Table ===\n";

$activation = DB::table('activations')->where('user_id', $adminUser->id)->first();
if ($activation) {
    echo "Activation record found:\n";
    echo "- Completed: " . ($activation->completed ? 'Yes' : 'No') . "\n";
    echo "- Completed at: " . ($activation->completed_at ?? 'N/A') . "\n";
    echo "- Code: " . substr($activation->code, 0, 10) . "...\n";
} else {
    echo "NO ACTIVATION RECORD FOUND for user ID: " . $adminUser->id . "\n";
}

echo "\n=== Final Verification ===\n";
echo "User activated status: " . ($adminUser->activated ? 'YES' : 'NO') . "\n";

echo "\n=== Test Complete ===\n";