<?php
// Clear all Laravel caches
require_once 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

echo "🧹 Clearing all Laravel caches...\n\n";

try {
    // Clear application cache
    Artisan::call('cache:clear');
    echo "✅ Application cache cleared\n";
    
    // Clear config cache
    Artisan::call('config:clear');
    echo "✅ Configuration cache cleared\n";
    
    // Clear route cache
    Artisan::call('route:clear');
    echo "✅ Route cache cleared\n";
    
    // Clear view cache
    Artisan::call('view:clear');
    echo "✅ View cache cleared\n";
    
    // Clear compiled services
    Artisan::call('clear-compiled');
    echo "✅ Compiled services cleared\n";
    
    // Clear queue cache
    try {
        Artisan::call('queue:clear');
        echo "✅ Queue cache cleared\n";
    } catch (Exception $e) {
        echo "⚠️ Queue cache clear failed (might not be available)\n";
    }
    
    // Optimize for production
    Artisan::call('config:cache');
    echo "✅ Configuration cached\n";
    
    Artisan::call('route:cache');
    echo "✅ Routes cached\n";
    
    Artisan::call('view:cache');
    echo "✅ Views cached\n";
    
    echo "\n🎉 All caches cleared and optimized!\n";
    
} catch (Exception $e) {
    echo "❌ Error: " . $e->getMessage() . "\n";
}
?>