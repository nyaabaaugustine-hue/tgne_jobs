<?php
// Vercel-compatible Laravel bootstrap

// Set the environment
$_ENV['APP_ENV'] = 'production';
$_SERVER['APP_ENV'] = 'production';

// Define the base path
define('LARAVEL_START', microtime(true));

// Check if we're in the right directory
if (!file_exists(__DIR__.'/../vendor/autoload.php')) {
    echo "Autoloader not found. Please run composer install.";
    exit(1);
}

// Load Composer autoloader
require_once __DIR__.'/../vendor/autoload.php';

// Create the Laravel application
$app = require_once __DIR__.'/../bootstrap/app.php';

// Create a request from the current server variables
$request = Illuminate\Http\Request::capture();

// Handle the request and send the response
$response = $app->handle($request);
$response->send();

// Terminate the application
$app->terminate($request, $response);