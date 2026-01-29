<?php
require_once 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Illuminate\Support\Facades\DB;

// Check the activations table structure
try {
    $columns = DB::select('PRAGMA table_info(activations)');
    echo "Activations table structure:\n";
    foreach ($columns as $column) {
        echo "- {$column->name} ({$column->type}) " . ($column->notnull ? "NOT NULL" : "NULL") . ($column->pk ? " PRIMARY KEY" : "") . "\n";
    }
} catch (Exception $e) {
    echo "Error checking activations table: " . $e->getMessage() . "\n";
}

// Check activation records
try {
    $activations = DB::table('activations')->get();
    if ($activations->count() > 0) {
        echo "\nActivation records:\n";
        foreach ($activations as $activation) {
            echo "ID: {$activation->id}, User ID: {$activation->user_id}, Completed: {$activation->completed}, Code: {$activation->code}\n";
        }
    } else {
        echo "\nNo activation records found.\n";
    }
} catch (Exception $e) {
    echo "Error fetching activations: " . $e->getMessage() . "\n";
}

// Check if there's a relationship between users and activations
try {
    $userId = DB::table('users')->where('email', 'admin@admin.com')->first()->id ?? null;
    if ($userId) {
        echo "\nAdmin user ID: {$userId}\n";
        
        $userActivations = DB::table('activations')->where('user_id', $userId)->get();
        if ($userActivations->count() > 0) {
            echo "Activations for admin user:\n";
            foreach ($userActivations as $activation) {
                echo "  ID: {$activation->id}, Completed: {$activation->completed}, Code: {$activation->code}\n";
            }
        } else {
            echo "No activations found for admin user.\n";
        }
    }
} catch (Exception $e) {
    echo "Error checking admin user activations: " . $e->getMessage() . "\n";
}
?>