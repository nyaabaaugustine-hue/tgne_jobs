<?php

require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

echo "Users table columns:\n";
print_r(Schema::getColumnListing('users'));

echo "\nCompanies table columns:\n";
print_r(Schema::getColumnListing('companies'));

echo "\nJobs table columns:\n";
print_r(Schema::getColumnListing('jobs'));

echo "\nTeams table columns:\n";
print_r(Schema::getColumnListing('teams'));

echo "\nTestimonials table columns:\n";
print_r(Schema::getColumnListing('testimonials'));

echo "\nJob categories table columns:\n";
print_r(Schema::getColumnListing('job_categories'));

echo "\nNews table columns:\n";
print_r(Schema::getColumnListing('news'));

echo "\nPartners table columns:\n";
print_r(Schema::getColumnListing('partners'));

echo "\nGalleries table columns:\n";
print_r(Schema::getColumnListing('galleries'));

echo "\nPages table columns:\n";
print_r(Schema::getColumnListing('pages'));