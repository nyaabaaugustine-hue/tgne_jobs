<?php

require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Illuminate\Support\Facades\Schema;

echo "Media table exists: " . (Schema::hasTable('media') ? 'Yes' : 'No') . "\n";
echo "Files table exists: " . (Schema::hasTable('files') ? 'Yes' : 'No') . "\n";
echo "Images table exists: " . (Schema::hasTable('images') ? 'Yes' : 'No') . "\n";