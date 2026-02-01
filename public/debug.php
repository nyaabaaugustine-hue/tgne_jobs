<?php
// Debug the actual request flow
echo "<h2>Laravel Request Debug</h2>";

try {
    // Bootstrap Laravel
    require __DIR__ . '/../vendor/autoload.php';
    $app = require_once __DIR__ . '/../bootstrap/app.php';
    
    echo "✅ Laravel bootstrapped<br>";
    
    // Check environment variables
    echo "<h3>Environment Variables:</h3>";
    echo "APP_KEY: " . (env('APP_KEY') ? 'SET (' . strlen(env('APP_KEY')) . ' chars)' : 'NOT SET') . "<br>";
    echo "APP_ENV: " . env('APP_ENV', 'NOT SET') . "<br>";
    echo "APP_DEBUG: " . (env('APP_DEBUG') ? 'true' : 'false') . "<br>";
    echo "APP_URL: " . env('APP_URL', 'NOT SET') . "<br>";
    echo "DB_CONNECTION: " . env('DB_CONNECTION', 'NOT SET') . "<br>";
    echo "DB_DATABASE: " . env('DB_DATABASE', 'NOT SET') . "<br>";
    
    // Test database connection
    echo "<h3>Database Test:</h3>";
    try {
        $pdo = new PDO('sqlite:' . env('DB_DATABASE'));
        echo "✅ Database connection successful<br>";
        
        // Test a simple query
        $stmt = $pdo->query("SELECT COUNT(*) as count FROM sqlite_master WHERE type='table'");
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        echo "✅ Database has " . $result['count'] . " tables<br>";
        
        // Test if we can query a specific table
        try {
            $stmt = $pdo->query("SELECT COUNT(*) as count FROM jb_users LIMIT 1");
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            echo "✅ jb_users table accessible<br>";
        } catch (Exception $e) {
            echo "❌ jb_users table error: " . $e->getMessage() . "<br>";
        }
        
    } catch (Exception $e) {
        echo "❌ Database connection failed: " . $e->getMessage() . "<br>";
    }
    
    // Test Laravel config
    echo "<h3>Laravel Config Test:</h3>";
    try {
        $config = $app->make('config');
        echo "✅ Config service available<br>";
        echo "App name: " . $config->get('app.name', 'NOT SET') . "<br>";
        echo "App key set: " . ($config->get('app.key') ? 'YES' : 'NO') . "<br>";
        echo "Database connection: " . $config->get('database.default', 'NOT SET') . "<br>";
    } catch (Exception $e) {
        echo "❌ Config error: " . $e->getMessage() . "<br>";
    }
    
    // Test actual HTTP request handling
    echo "<h3>HTTP Request Test:</h3>";
    try {
        use Illuminate\Http\Request;
        use Illuminate\Contracts\Http\Kernel;
        
        $kernel = $app->make(Kernel::class);
        echo "✅ Kernel created<br>";
        
        $request = Request::create('/', 'GET');
        echo "✅ Request created<br>";
        
        // This is where it might fail
        $response = $kernel->handle($request);
        echo "✅ Request handled successfully<br>";
        echo "Response status: " . $response->getStatusCode() . "<br>";
        
    } catch (Exception $e) {
        echo "❌ HTTP Request failed: " . $e->getMessage() . "<br>";
        echo "Error file: " . $e->getFile() . ":" . $e->getLine() . "<br>";
        echo "Stack trace:<br><pre>" . $e->getTraceAsString() . "</pre>";
    }
    
} catch (Exception $e) {
    echo "❌ Fatal error: " . $e->getMessage() . "<br>";
    echo "Error file: " . $e->getFile() . ":" . $e->getLine() . "<br>";
}