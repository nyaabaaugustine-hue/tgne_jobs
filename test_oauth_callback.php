<?php
// Test OAuth callback handling
parse_str("nonce=7f92c86e570b44be8fd18897716af895&challenge=-eK9oYnBq7y6DBOHHT___D3RNQT3ZwVaFqJFM9wqkEA&challenge_method=S256&redirect_uri=qoder%3A%2F%2Faicoding.aicoding-agent%2Flogin-success", $_GET);

// Include the handler
include 'handle_oauth_callback.php';
?>