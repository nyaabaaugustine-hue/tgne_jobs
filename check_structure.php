<?php
try {
    $db = new SQLite3('database/database.sqlite');
    
    // Get table structure
    $result = $db->query('PRAGMA table_info(users)');
    echo "Users table columns:\n";
    while ($row = $result->fetchArray(SQLITE3_ASSOC)) {
        echo "- " . $row['name'] . " (" . $row['type'] . ")\n";
    }
    
    echo "\nAll users:\n";
    $result2 = $db->query('SELECT * FROM users');
    while ($row = $result2->fetchArray(SQLITE3_ASSOC)) {
        echo "Email: " . $row['email'] . "\n";
        foreach ($row as $key => $value) {
            if (strpos(strtolower($key), 'admin') !== false || strpos(strtolower($key), 'super') !== false) {
                echo "  $key: $value\n";
            }
        }
        echo "---\n";
    }
    
    $db->close();
} catch (Exception $e) {
    echo "Error: " . $e->getMessage() . "\n";
}
?>