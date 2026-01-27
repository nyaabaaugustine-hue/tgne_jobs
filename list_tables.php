<?php
require 'vendor/autoload.php';
$app = require 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;

$tables = DB::select('SELECT name FROM sqlite_master WHERE type=\'table\'');
echo "Available tables:\n";
foreach ($tables as $table) {
    echo $table->name . "\n";
}