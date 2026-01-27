<?php
require 'vendor/autoload.php';
$app = require 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;

$columns = DB::select('PRAGMA table_info(media_files)');
echo "Media files table columns:\n";
foreach ($columns as $column) {
    echo $column->name . ' (' . $column->type . ")\n";
}