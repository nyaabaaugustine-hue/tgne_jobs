<?php
require_once 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

echo "=== ACCOUNT TABLE COLUMNS ===\n";
try {
    $columns = DB::select('PRAGMA table_info(jb_accounts)');
    foreach($columns as $col) {
        echo $col->name . ' (' . $col->type . ')' . "\n";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage() . "\n";
}
?>