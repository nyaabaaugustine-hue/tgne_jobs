<?php
require 'vendor/autoload.php';
$app = require 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

echo "Checking for missing tables and data...\n";

$tables = [
    'users',
    'media_files',
    'pages',
    'galleries',
    'teams',
    'testimonials',
    'jobs',
    'companies',
    'job_categories'
];

foreach ($tables as $table) {
    if (Schema::hasTable($table)) {
        $count = DB::table($table)->count();
        echo "$table: $count records\n";
    } else {
        echo "$table: MISSING\n";
    }
}