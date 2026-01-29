<?php
require 'vendor/autoload.php';
$app = require 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;

$user = DB::table('users')->first();
$media = DB::table('media_files')->where('id', $user->avatar_id)->first();
echo 'User avatar: ' . $media->url . "\n";

$page = DB::table('pages')->first();
echo 'Page image: ' . $page->image . "\n";

$gallery = DB::table('galleries')->first();
echo 'Gallery image: ' . $gallery->image . "\n";