<?php
// Vercel-compatible Laravel entry point

// Set the base path to the Laravel public directory
$uri = urldecode(
    parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH)
);

// This file allows us to emulate Apache's "mod_rewrite" functionality from the
// built-in PHP web server. This provides a convenient way to test a Laravel
// application without having installed a "real" web server software here.
if ($uri !== '/' && file_exists(__DIR__.'/../public'.$uri)) {
    return false;
}

// Change to the public directory
chdir(__DIR__.'/../public');

// Require the main Laravel public index.php
require_once __DIR__.'/../public/index.php';