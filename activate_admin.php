<?php
require_once 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\ACL\Models\User;

// Activate the admin user
$result = User::where('email', 'admin@admin.com')->update(['status' => 'activated']);
echo "Rows updated: " . $result . "\n";

// Verify the update
$user = User::where('email', 'admin@admin.com')->first();
if ($user) {
    echo "User: " . $user->email . "\n";
    echo "Status: " . $user->status . "\n";
    echo "Super User: " . $user->super_user . "\n";
}
?>