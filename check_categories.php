<?php
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;

try {
    echo "Job categories count: " . DB::table('jb_categories')->count() . "\n\n";
    
    $categories = DB::table('jb_categories')->get();
    foreach($categories as $cat) {
        echo "- " . $cat->name . " (ID: " . $cat->id . ")\n";
    }
    
    if ($categories->isEmpty()) {
        echo "\nNo job categories found. Need to seed job categories.\n";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage() . "\n";
}