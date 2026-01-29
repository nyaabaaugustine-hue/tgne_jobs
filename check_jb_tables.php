<?php
require 'vendor/autoload.php';
$app = require 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

echo "jb_companies: " . (Schema::hasTable('jb_companies') ? DB::table('jb_companies')->count() : 'MISSING') . "\n";
echo "jb_categories: " . (Schema::hasTable('jb_categories') ? DB::table('jb_categories')->count() : 'MISSING') . "\n";