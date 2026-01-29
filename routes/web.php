<?php

use Illuminate\Support\Facades\Route;

// Root health check route for Railway deployment
Route::get('/', function () {
    return response()->json(['status' => 'healthy', 'service' => 'jobbox-app']);
});

// Health check route for deployment debugging
Route::get('/health', function () {
    return response()->json(['status' => 'healthy']);
});

// Alternative health check
Route::get('/healthz', function () {
    return response('OK', 200);
});

