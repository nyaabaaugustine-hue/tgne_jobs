<?php

use Illuminate\Support\Facades\Route;

// Health check route for deployment debugging
Route::get('/health', function () {
    return response()->json(['status' => 'healthy']);
});

// Alternative health check
Route::get('/healthz', function () {
    return response('OK', 200);
});

