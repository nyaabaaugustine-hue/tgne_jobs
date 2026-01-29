<?php
require_once 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Illuminate\Support\Facades\DB;

// Get the admin user ID
$adminUser = DB::table('users')->where('email', 'admin@admin.com')->first();
if (!$adminUser) {
    echo "Admin user not found!\n";
    exit(1);
}

$userId = $adminUser->id;
echo "Admin user ID: {$userId}\n";

// Check if activation record already exists
$existingActivation = DB::table('activations')->where('user_id', $userId)->first();
if ($existingActivation) {
    if ($existingActivation->completed == 1) {
        echo "User is already activated.\n";
        exit(0);
    } else {
        // Update existing activation to completed
        DB::table('activations')
            ->where('user_id', $userId)
            ->update([
                'completed' => 1,
                'completed_at' => now(),
                'updated_at' => now()
            ]);
        echo "Existing activation updated to completed.\n";
    }
} else {
    // Create a new activation record
    $activationCode = bin2hex(random_bytes(16)); // Generate a random activation code
    
    DB::table('activations')->insert([
        'user_id' => $userId,
        'code' => $activationCode,
        'completed' => 1,
        'completed_at' => now(),
        'created_at' => now(),
        'updated_at' => now()
    ]);
    
    echo "New activation record created and completed.\n";
}

// Verify the activation
$verification = DB::table('activations')
    ->where('user_id', $userId)
    ->where('completed', 1)
    ->first();
    
if ($verification) {
    echo "SUCCESS: Admin user is now activated!\n";
    echo "Activation ID: {$verification->id}\n";
    echo "Completed at: {$verification->completed_at}\n";
} else {
    echo "ERROR: Activation failed!\n";
}
?>