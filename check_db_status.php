<?php
require 'vendor/autoload.php';
$app = require 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

echo "Checking database status...\n";

// Check users
if (Schema::hasTable('users')) {
    echo "Users: " . DB::table('users')->count() . "\n";
} else {
    echo "Users table not found\n";
}

// Check media_files
if (Schema::hasTable('media_files')) {
    echo "Media files: " . DB::table('media_files')->count() . "\n";
} else {
    echo "Media files table not found\n";
}

// Check pages
if (Schema::hasTable('pages')) {
    echo "Pages: " . DB::table('pages')->count() . "\n";
} else {
    echo "Pages table not found\n";
}

// Check galleries
if (Schema::hasTable('galleries')) {
    echo "Galleries: " . DB::table('galleries')->count() . "\n";
} else {
    echo "Galleries table not found\n";
}

// Check teams
if (Schema::hasTable('teams')) {
    echo "Teams: " . DB::table('teams')->count() . "\n";
} else {
    echo "Teams table not found\n";
}

// Check testimonials
if (Schema::hasTable('testimonials')) {
    echo "Testimonials: " . DB::table('testimonials')->count() . "\n";
} else {
    echo "Testimonials table not found\n";
}