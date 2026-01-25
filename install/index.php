<?php
/**
 * Secure PHP Installation Wizard for Shared cPanel Hosting
 * 
 * Multi-step installer for web applications with:
 * - Server requirements check
 * - Database configuration
 * - Admin account creation
 * - Secure password hashing
 * - Automatic file generation
 */

session_start();

// Prevent reinstallation if lock file exists
if (file_exists('../install.lock')) {
    die('<h1>Installation Already Completed</h1><p>This application has already been installed. Please remove the install directory for security.</p>');
}

// Define installation steps
define('STEP_WELCOME', 1);
define('STEP_REQUIREMENTS', 2);
define('STEP_DATABASE', 3);
define('STEP_ADMIN', 4);
define('STEP_COMPLETE', 5);

// Get current step from POST or default to welcome
$current_step = isset($_POST['step']) ? (int)$_POST['step'] : STEP_WELCOME;

// Initialize errors array
$errors = [];

/**
 * Check if required PHP extensions are available
 */
function check_php_extensions() {
    $required_extensions = [
        'pdo' => extension_loaded('pdo'),
        'mysqli' => extension_loaded('mysqli'),
        'pdo_mysql' => extension_loaded('pdo_mysql'),
        'json' => extension_loaded('json'),
        'gd' => extension_loaded('gd'),
        'zip' => extension_loaded('zip'),
        'curl' => extension_loaded('curl'),
        'openssl' => extension_loaded('openssl'),
        'mbstring' => extension_loaded('mbstring'),
        'xml' => extension_loaded('xml'),
        'fileinfo' => extension_loaded('fileinfo')
    ];

    return $required_extensions;
}

/**
 * Check directory permissions
 */
function check_permissions() {
    $directories = [
        '../storage' => is_writable('../storage'),
        '../bootstrap/cache' => is_writable('../bootstrap/cache'),
        '..' => is_writable('../')
    ];

    return $directories;
}

/**
 * Validate database connection
 */
function test_database_connection($host, $port, $dbname, $username, $password) {
    try {
        $dsn = "mysql:host={$host};port={$port};dbname={$dbname};charset=utf8mb4";
        $pdo = new PDO($dsn, $username, $password, [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ]);
        return true;
    } catch (PDOException $e) {
        return false;
    }
}

/**
 * Import SQL file to database
 */
function import_sql_file($host, $port, $dbname, $username, $password, $sql_file) {
    try {
        $dsn = "mysql:host={$host};port={$port};dbname={$dbname};charset=utf8mb4";
        $pdo = new PDO($dsn, $username, $password, [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ]);

        $sql_content = file_get_contents($sql_file);
        if ($sql_content === false) {
            return false;
        }

        // Split SQL content by semicolon to execute queries separately
        $queries = array_filter(array_map('trim', explode(";\n", $sql_content)));
        
        foreach ($queries as $query) {
            if (!empty($query)) {
                $pdo->exec($query);
            }
        }

        return true;
    } catch (PDOException $e) {
        return false;
    }
}

/**
 * Hash password securely
 */
function hash_password($password) {
    return password_hash($password, PASSWORD_DEFAULT);
}

/**
 * Generate config file
 */
function generate_config_file($db_config) {
    $config_content = "<?php
/**
 * Application Configuration File
 * Generated during installation
 */

return [
    'database' => [
        'host' => '{$db_config['host']}',
        'port' => {$db_config['port']},
        'dbname' => '{$db_config['dbname']}',
        'username' => '{$db_config['username']}',
        'password' => '{$db_config['password']}',
        'charset' => 'utf8mb4',
        'collation' => 'utf8mb4_unicode_ci',
    ],
    'app' => [
        'name' => 'JobBox Application',
        'url' => \$_SERVER['HTTP_HOST'],
        'timezone' => 'UTC',
        'locale' => 'en',
        'debug' => false,
    ],
    'paths' => [
        'storage' => '../storage/',
        'public' => '../public/',
    ]
];
";

    return file_put_contents('../config.php', $config_content);
}

// Process form submissions
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    switch ($current_step) {
        case STEP_REQUIREMENTS:
            $extensions = check_php_extensions();
            $permissions = check_permissions();
            
            $all_ok = true;
            foreach ($extensions as $ext => $loaded) {
                if (!$loaded) {
                    $all_ok = false;
                    $errors[] = "Extension {$ext} is required but not installed.";
                }
            }
            
            foreach ($permissions as $dir => $writable) {
                if (!$writable) {
                    $all_ok = false;
                    $errors[] = "Directory {$dir} is not writable.";
                }
            }
            
            if ($all_ok) {
                $current_step = STEP_DATABASE;
            }
            break;

        case STEP_DATABASE:
            // Validate inputs
            $db_host = trim($_POST['db_host'] ?? '');
            $db_port = (int)($_POST['db_port'] ?? 3306);
            $db_name = trim($_POST['db_name'] ?? '');
            $db_username = trim($_POST['db_username'] ?? '');
            $db_password = $_POST['db_password'] ?? '';

            if (empty($db_host) || empty($db_name) || empty($db_username)) {
                $errors[] = "Database host, name, and username are required.";
            } elseif (!test_database_connection($db_host, $db_port, $db_name, $db_username, $db_password)) {
                $errors[] = "Could not connect to database. Please check your credentials.";
            } else {
                // Store database info in session for next step
                $_SESSION['db_config'] = [
                    'host' => $db_host,
                    'port' => $db_port,
                    'dbname' => $db_name,
                    'username' => $db_username,
                    'password' => $db_password
                ];
                
                // Import database
                if (!import_sql_file($db_host, $db_port, $db_name, $db_username, $db_password, 'install.sql')) {
                    $errors[] = "Failed to import database structure and data. Please check your SQL file and permissions.";
                } else {
                    $current_step = STEP_ADMIN;
                }
            }
            break;

        case STEP_ADMIN:
            $admin_username = trim($_POST['admin_username'] ?? '');
            $admin_email = trim($_POST['admin_email'] ?? '');
            $admin_password = $_POST['admin_password'] ?? '';
            $confirm_password = $_POST['confirm_password'] ?? '';

            if (empty($admin_username) || empty($admin_email) || empty($admin_password)) {
                $errors[] = "All fields are required.";
            } elseif (!filter_var($admin_email, FILTER_VALIDATE_EMAIL)) {
                $errors[] = "Invalid email address.";
            } elseif ($admin_password !== $confirm_password) {
                $errors[] = "Passwords do not match.";
            } elseif (strlen($admin_password) < 8) {
                $errors[] = "Password must be at least 8 characters long.";
            } else {
                // Store admin info in session
                $_SESSION['admin_config'] = [
                    'username' => $admin_username,
                    'email' => $admin_email,
                    'password' => hash_password($admin_password)
                ];
                
                // Generate config file
                if (!generate_config_file($_SESSION['db_config'])) {
                    $errors[] = "Failed to generate configuration file.";
                } else {
                    // Create lock file to prevent reinstallation
                    file_put_contents('../install.lock', date('Y-m-d H:i:s'));
                    
                    $current_step = STEP_COMPLETE;
                }
            }
            break;
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JobBox Installation Wizard</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            color: #333;
            line-height: 1.6;
            padding: 20px;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            overflow: hidden;
        }
        
        .header {
            background: #2c3e50;
            color: white;
            padding: 20px;
            text-align: center;
        }
        
        .header h1 {
            margin-bottom: 10px;
        }
        
        .progress-bar {
            display: flex;
            background: #ecf0f1;
            padding: 10px;
        }
        
        .progress-step {
            flex: 1;
            text-align: center;
            padding: 10px;
            position: relative;
        }
        
        .progress-step.active {
            font-weight: bold;
            color: #3498db;
        }
        
        .progress-step.completed {
            color: #2ecc71;
        }
        
        .progress-step:not(:last-child)::after {
            content: '';
            position: absolute;
            top: 50%;
            right: -10px;
            width: 20px;
            height: 2px;
            background: #bdc3c7;
            transform: translateY(-50%);
        }
        
        .content {
            padding: 30px;
        }
        
        .step {
            display: none;
        }
        
        .step.active {
            display: block;
        }
        
        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
            border-bottom: 2px solid #eee;
            padding-bottom: 10px;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="number"],
        select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        
        button {
            background: #3498db;
            color: white;
            border: none;
            padding: 12px 25px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s;
        }
        
        button:hover {
            background: #2980b9;
        }
        
        .btn-prev {
            background: #95a5a6;
        }
        
        .btn-prev:hover {
            background: #7f8c8d;
        }
        
        .btn-next {
            background: #2ecc71;
        }
        
        .btn-next:hover {
            background: #27ae60;
        }
        
        .button-group {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        
        .error {
            background: #e74c3c;
            color: white;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        
        .success {
            background: #2ecc71;
            color: white;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        
        .requirement-list {
            list-style-type: none;
        }
        
        .requirement-item {
            padding: 10px;
            margin-bottom: 5px;
            border-radius: 5px;
        }
        
        .requirement-ok {
            background: #d5f4e6;
            color: #27ae60;
        }
        
        .requirement-error {
            background: #fadbd8;
            color: #e74c3c;
        }
        
        .footer {
            text-align: center;
            padding: 20px;
            background: #ecf0f1;
            color: #7f8c8d;
            font-size: 14px;
        }
        
        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>JobBox Installation Wizard</h1>
            <p>Easy setup for your job board application</p>
        </div>
        
        <div class="progress-bar">
            <div class="progress-step <?php echo $current_step >= STEP_WELCOME ? 'completed' : ''; ?>">Welcome</div>
            <div class="progress-step <?php echo $current_step >= STEP_REQUIREMENTS ? 'completed' : ''; ?> <?php echo $current_step === STEP_REQUIREMENTS ? 'active' : ''; ?>">Requirements</div>
            <div class="progress-step <?php echo $current_step >= STEP_DATABASE ? 'completed' : ''; ?> <?php echo $current_step === STEP_DATABASE ? 'active' : ''; ?>">Database</div>
            <div class="progress-step <?php echo $current_step >= STEP_ADMIN ? 'completed' : ''; ?> <?php echo $current_step === STEP_ADMIN ? 'active' : ''; ?>">Admin</div>
            <div class="progress-step <?php echo $current_step >= STEP_COMPLETE ? 'completed' : ''; ?>">Complete</div>
        </div>
        
        <div class="content">
            <?php if (!empty($errors)): ?>
                <div class="error">
                    <strong>Error:</strong>
                    <ul>
                        <?php foreach ($errors as $error): ?>
                            <li><?php echo htmlspecialchars($error); ?></li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            <?php endif; ?>
            
            <!-- Step 1: Welcome -->
            <div class="step <?php echo $current_step === STEP_WELCOME ? 'active' : ''; ?>" id="step-1">
                <h2>Welcome to JobBox Installation</h2>
                <p>Thank you for choosing JobBox for your job board needs. This wizard will guide you through the installation process.</p>
                
                <p>Before we begin, please make sure you have the following information ready:</p>
                <ul>
                    <li>Database host, name, username, and password</li>
                    <li>Administrator account details</li>
                    <li>FTP access to your server (optional)</li>
                </ul>
                
                <p><strong>Important:</strong> After installation, you will need to remove the <code>/install</code> directory for security purposes.</p>
                
                <form method="post">
                    <input type="hidden" name="step" value="<?php echo STEP_REQUIREMENTS; ?>">
                    <div class="button-group">
                        <div></div> <!-- Empty div for spacing -->
                        <button type="submit" class="btn-next">Start Installation</button>
                    </div>
                </form>
            </div>
            
            <!-- Step 2: Requirements Check -->
            <div class="step <?php echo $current_step === STEP_REQUIREMENTS ? 'active' : ''; ?>" id="step-2">
                <h2>Server Requirements Check</h2>
                <p>We're checking if your server meets the requirements for JobBox.</p>
                
                <h3>PHP Extensions</h3>
                <ul class="requirement-list">
                    <?php $extensions = check_php_extensions(); ?>
                    <?php foreach ($extensions as $ext => $loaded): ?>
                        <li class="requirement-item <?php echo $loaded ? 'requirement-ok' : 'requirement-error'; ?>">
                            <strong><?php echo ucfirst($ext); ?>:</strong> 
                            <?php echo $loaded ? 'Installed' : 'Missing'; ?>
                        </li>
                    <?php endforeach; ?>
                </ul>
                
                <h3>Directory Permissions</h3>
                <ul class="requirement-list">
                    <?php $permissions = check_permissions(); ?>
                    <?php foreach ($permissions as $dir => $writable): ?>
                        <li class="requirement-item <?php echo $writable ? 'requirement-ok' : 'requirement-error'; ?>">
                            <strong><?php echo $dir; ?>:</strong> 
                            <?php echo $writable ? 'Writable' : 'Not Writable'; ?>
                        </li>
                    <?php endforeach; ?>
                </ul>
                
                <form method="post">
                    <input type="hidden" name="step" value="<?php echo STEP_DATABASE; ?>">
                    <div class="button-group">
                        <button type="submit" name="step" value="<?php echo STEP_WELCOME; ?>" class="btn-prev">Previous</button>
                        <button type="submit" class="btn-next">Continue</button>
                    </div>
                </form>
            </div>
            
            <!-- Step 3: Database Configuration -->
            <div class="step <?php echo $current_step === STEP_DATABASE ? 'active' : ''; ?>" id="step-3">
                <h2>Database Configuration</h2>
                <p>Please enter your database connection details.</p>
                
                <form method="post">
                    <div class="form-group">
                        <label for="db_host">Database Host:</label>
                        <input type="text" id="db_host" name="db_host" value="<?php echo htmlspecialchars($_POST['db_host'] ?? 'localhost'); ?>" required>
                        <small>Usually "localhost" or an IP address</small>
                    </div>
                    
                    <div class="form-group">
                        <label for="db_port">Database Port:</label>
                        <input type="number" id="db_port" name="db_port" value="<?php echo htmlspecialchars($_POST['db_port'] ?? '3306'); ?>" required>
                        <small>Default MySQL port is 3306</small>
                    </div>
                    
                    <div class="form-group">
                        <label for="db_name">Database Name:</label>
                        <input type="text" id="db_name" name="db_name" value="<?php echo htmlspecialchars($_POST['db_name'] ?? ''); ?>" required>
                        <small>The database must already exist</small>
                    </div>
                    
                    <div class="form-group">
                        <label for="db_username">Database Username:</label>
                        <input type="text" id="db_username" name="db_username" value="<?php echo htmlspecialchars($_POST['db_username'] ?? ''); ?>" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="db_password">Database Password:</label>
                        <input type="password" id="db_password" name="db_password" required>
                    </div>
                    
                    <input type="hidden" name="step" value="<?php echo STEP_ADMIN; ?>">
                    <div class="button-group">
                        <button type="submit" name="step" value="<?php echo STEP_REQUIREMENTS; ?>" class="btn-prev">Previous</button>
                        <button type="submit" class="btn-next">Test & Continue</button>
                    </div>
                </form>
            </div>
            
            <!-- Step 4: Admin Account -->
            <div class="step <?php echo $current_step === STEP_ADMIN ? 'active' : ''; ?>" id="step-4">
                <h2>Create Admin Account</h2>
                <p>Create your administrator account for the JobBox backend.</p>
                
                <form method="post">
                    <div class="form-group">
                        <label for="admin_username">Username:</label>
                        <input type="text" id="admin_username" name="admin_username" value="<?php echo htmlspecialchars($_POST['admin_username'] ?? ''); ?>" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="admin_email">Email Address:</label>
                        <input type="email" id="admin_email" name="admin_email" value="<?php echo htmlspecialchars($_POST['admin_email'] ?? ''); ?>" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="admin_password">Password:</label>
                        <input type="password" id="admin_password" name="admin_password" required>
                        <small>Password must be at least 8 characters long</small>
                    </div>
                    
                    <div class="form-group">
                        <label for="confirm_password">Confirm Password:</label>
                        <input type="password" id="confirm_password" name="confirm_password" required>
                    </div>
                    
                    <input type="hidden" name="step" value="<?php echo STEP_COMPLETE; ?>">
                    <div class="button-group">
                        <button type="submit" name="step" value="<?php echo STEP_DATABASE; ?>" class="btn-prev">Previous</button>
                        <button type="submit" class="btn-next">Complete Installation</button>
                    </div>
                </form>
            </div>
            
            <!-- Step 5: Complete -->
            <div class="step <?php echo $current_step === STEP_COMPLETE ? 'active' : ''; ?>" id="step-5">
                <h2>Installation Complete!</h2>
                
                <div class="success">
                    <p><strong>Congratulations!</strong> Your JobBox application has been successfully installed.</p>
                </div>
                
                <h3>Next Steps:</h3>
                <ol>
                    <li><strong>Remove Install Directory</strong> - For security, please delete the <code>/install</code> folder from your server using FTP or your hosting control panel.</li>
                    <li><strong>Login to Admin Panel</strong> - Access your admin area at <a href="../admin">/admin</a> using the credentials you created.</li>
                    <li><strong>Configure Settings</strong> - Update your site settings, appearance, and preferences.</li>
                    <li><strong>Customize Content</strong> - Add your own content, pages, and job listings.</li>
                </ol>
                
                <p>You can now access your JobBox application:</p>
                <ul>
                    <li><a href="../">Visit Your Site</a></li>
                    <li><a href="../admin">Admin Panel</a></li>
                </ul>
                
                <div class="button-group">
                    <div></div> <!-- Empty div for spacing -->
                    <button onclick="window.location.href='../'" class="btn-next">Go to Homepage</button>
                </div>
            </div>
        </div>
        
        <div class="footer">
            <p>JobBox Installation Wizard &copy; <?php echo date('Y'); ?> | Secure Installation Process</p>
        </div>
    </div>

    <script>
        // Simple form validation
        document.addEventListener('DOMContentLoaded', function() {
            const forms = document.querySelectorAll('form');
            
            forms.forEach(form => {
                form.addEventListener('submit', function(e) {
                    // Basic validation can be added here
                    const submitBtn = form.querySelector('button[type="submit"]');
                    submitBtn.textContent = 'Processing...';
                    submitBtn.disabled = true;
                });
            });
        });
    </script>
</body>
</html>