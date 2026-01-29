<?php
require_once 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Illuminate\Support\Facades\DB;

// List all tables in the database
try {
    $tables = DB::select('SELECT name FROM sqlite_master WHERE type = "table"');
    echo "All tables in database:\n";
    foreach ($tables as $table) {
        echo "- {$table->name}\n";
    }
} catch (Exception $e) {
    echo "Error listing tables: " . $e->getMessage() . "\n";
}

// Check specifically for botble/cms related tables
try {
    $cmsTables = DB::select("SELECT name FROM sqlite_master WHERE type = 'table' AND name LIKE '%cms_%'");
    if (!empty($cmsTables)) {
        echo "\nCMS/Botble tables:\n";
        foreach ($cmsTables as $table) {
            echo "- {$table->name}\n";
        }
    }
} catch (Exception $e) {
    echo "Error checking CMS tables: " . $e->getMessage() . "\n";
}
?>