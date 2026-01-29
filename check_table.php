<?php
require_once 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Illuminate\Support\Facades\DB;

// Check the users table structure
try {
    $columns = DB::select('PRAGMA table_info(users)');
    echo "Users table structure:\n";
    foreach ($columns as $column) {
        echo "- {$column->name} ({$column->type}) " . ($column->notnull ? "NOT NULL" : "NULL") . ($column->pk ? " PRIMARY KEY" : "") . "\n";
    }
} catch (Exception $e) {
    echo "Error checking users table: " . $e->getMessage() . "\n";
}

// Also check if there's a cms_users table
try {
    $cms_columns = DB::select('PRAGMA table_info(cms_users)');
    if ($cms_columns) {
        echo "\ncms_users table structure:\n";
        foreach ($cms_columns as $column) {
            echo "- {$column->name} ({$column->type}) " . ($column->notnull ? "NOT NULL" : "NULL") . ($column->pk ? " PRIMARY KEY" : "") . "\n";
        }
    }
} catch (Exception $e) {
    echo "\ncms_users table doesn't exist or error: " . $e->getMessage() . "\n";
}

// Check current user record
try {
    $user = DB::table('users')->where('email', 'admin@admin.com')->first();
    if ($user) {
        echo "\nCurrent admin user data:\n";
        foreach ((array)$user as $key => $value) {
            echo "{$key}: {$value}\n";
        }
    }
} catch (Exception $e) {
    echo "\nError fetching user: " . $e->getMessage() . "\n";
}
?>