<?php
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;

try {
    echo "Jobs count: " . DB::table('jb_jobs')->count() . "\n\n";
    
    echo "Jobs with company associations:\n";
    $jobs = DB::table('jb_jobs')
        ->join('jb_companies', 'jb_jobs.company_id', '=', 'jb_companies.id')
        ->select('jb_jobs.id', 'jb_jobs.name', 'jb_jobs.company_id', 'jb_jobs.location', 'jb_jobs.salary_min', 'jb_jobs.salary_max', 'jb_companies.name as company_name')
        ->limit(10)
        ->get();
    
    foreach($jobs as $job) {
        echo "- ID:" . $job->id . " | " . $job->name . " | Company:" . $job->company_name . " | Location:" . $job->location . "\n";
    }
    
    if ($jobs->isEmpty()) {
        echo "No jobs found.\n";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage() . "\n";
}