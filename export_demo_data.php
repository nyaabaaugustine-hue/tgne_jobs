<?php

require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

echo "Exporting demo data...\n";

// Get all table names
$tables = DB::select("SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%'");

$exportData = [];

foreach ($tables as $table) {
    $tableName = $table->name;
    
    // Skip certain system tables
    if (in_array($tableName, ['migrations', 'failed_jobs', 'personal_access_tokens', 'sessions'])) {
        continue;
    }
    
    echo "Exporting table: $tableName\n";
    
    $rows = DB::table($tableName)->get();
    
    if ($rows->count() > 0) {
        $exportData[$tableName] = $rows->toArray();
    }
}

// Save to JSON file for easier handling
file_put_contents('demo_data_export.json', json_encode($exportData, JSON_PRETTY_PRINT));

echo "Demo data exported to demo_data_export.json\n";
echo "Total tables exported: " . count($exportData) . "\n";

foreach ($exportData as $table => $data) {
    echo "$table: " . count($data) . " records\n";
}