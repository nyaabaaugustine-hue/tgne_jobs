<?php

use Illuminate\Support\Facades\Route;

// Health check route for deployment debugging
Route::get('/health', function () {
    return response('OK', 200);
});

