<?php
try {
    $db = new SQLite3('database/database.sqlite');
    
    // Check for super users
    $result = $db->query('SELECT email FROM users WHERE is_superuser = 1');
    
    echo "Super Admin users in database:\n";
    while ($row = $result->fetchArray(SQLITE3_ASSOC)) {
        echo "- " . $row['email'] . "\n";
    }
    
    // Check all users
    $result2 = $db->query('SELECT email FROM users');
    echo "\nAll users in database:\n";
    while ($row = $result2->fetchArray(SQLITE3_ASSOC)) {
        echo "- " . $row['email'] . "\n";
    }
    
    $db->close();
} catch (Exception $e) {
    echo "Error: " . $e->getMessage() . "\n";
}
?>