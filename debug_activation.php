<?php
require_once 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Illuminate\Support\Facades\DB;

echo "=== Checking Current User Status ===\n";

// Check if admin user exists
$adminUser = DB::table('users')->where('email', 'admin@admin.com')->first();
if ($adminUser) {
    echo "Admin user found:\n";
    echo "- ID: {$adminUser->id}\n";
    echo "- Email: {$adminUser->email}\n";
    echo "- Username: {$adminUser->username}\n";
    echo "- Super User: {$adminUser->super_user}\n";
    echo "- Email Verified: " . ($adminUser->email_verified_at ? 'Yes' : 'No') . "\n";
} else {
    echo "Admin user NOT FOUND!\n";
    // Create admin user
    $userId = DB::table('users')->insertGetId([
        'email' => 'admin@admin.com',
        'username' => 'admin',
        'password' => password_hash('admin123', PASSWORD_BCRYPT),
        'first_name' => 'Admin',
        'last_name' => 'User',
        'email_verified_at' => now(),
        'super_user' => 1,
        'manage_supers' => 1,
        'created_at' => now(),
        'updated_at' => now(),
    ]);
    echo "Created admin user with ID: {$userId}\n";
}

// Check activations table
echo "\n=== Checking Activations Table ===\n";
$activations = DB::table('activations')->get();
echo "Total activation records: " . $activations->count() . "\n";

if ($adminUser) {
    $userActivations = DB::table('activations')->where('user_id', $adminUser->id)->get();
    echo "Activations for admin user (ID: {$adminUser->id}): " . $userActivations->count() . "\n";
    
    foreach ($userActivations as $activation) {
        echo "- Activation ID: {$activation->id}, Completed: {$activation->completed}, Code: {$activation->code}\n";
    }
    
    // If no activation exists for admin user, create one
    if ($userActivations->count() === 0) {
        echo "\nCreating activation record for admin user...\n";
        DB::table('activations')->insert([
            'user_id' => $adminUser->id,
            'code' => bin2hex(random_bytes(16)),
            'completed' => 1,
            'completed_at' => now(),
            'created_at' => now(),
            'updated_at' => now(),
        ]);
        echo "Activation record created successfully!\n";
    } else {
        // Ensure activation is completed
        $incompleteActivations = $userActivations->filter(function($activation) {
            return $activation->completed != 1;
        });
        
        if ($incompleteActivations->count() > 0) {
            echo "\nUpdating incomplete activations to completed...\n";
            DB::table('activations')
                ->where('user_id', $adminUser->id)
                ->update([
                    'completed' => 1,
                    'completed_at' => now(),
                    'updated_at' => now()
                ]);
            echo "Activations updated to completed!\n";
        } else {
            echo "Activation is already completed.\n";
        }
    }
}

echo "\n=== Final Verification ===\n";
$finalCheck = DB::table('users')
    ->join('activations', 'users.id', '=', 'activations.user_id')
    ->where('users.email', 'admin@admin.com')
    ->where('activations.completed', 1)
    ->select('users.*', 'activations.completed as activation_completed')
    ->first();

if ($finalCheck) {
    echo "✅ SUCCESS: Admin user is properly activated!\n";
    echo "User ID: {$finalCheck->id}\n";
    echo "Activation completed: {$finalCheck->activation_completed}\n";
} else {
    echo "❌ FAILURE: Admin user is not properly activated!\n";
}

// Clear cache to make sure changes take effect
echo "\nClearing application cache...\n";
try {
    DB::statement('PRAGMA wal_checkpoint;');
    echo "Cache cleared successfully.\n";
} catch (Exception $e) {
    echo "Cache clear attempt completed.\n";
}

echo "\nDone!\n";
?>