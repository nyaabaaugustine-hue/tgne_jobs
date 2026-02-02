<?php
// Handle OAuth callback from Qoder
header('Content-Type: application/json');

try {
    // Extract parameters from URL
    $nonce = $_GET['nonce'] ?? null;
    $challenge = $_GET['challenge'] ?? null;
    $challenge_method = $_GET['challenge_method'] ?? null;
    $redirect_uri = $_GET['redirect_uri'] ?? null;
    
    if (!$nonce || !$challenge || !$challenge_method || !$redirect_uri) {
        throw new Exception('Missing required OAuth parameters');
    }
    
    // Decode redirect URI
    $decoded_redirect_uri = urldecode($redirect_uri);
    
    // Prepare response
    $response = [
        'status' => 'success',
        'timestamp' => date('Y-m-d H:i:s'),
        'oauth_params' => [
            'nonce' => $nonce,
            'challenge' => $challenge,
            'challenge_method' => $challenge_method,
            'redirect_uri' => $redirect_uri,
            'decoded_redirect_uri' => $decoded_redirect_uri
        ],
        'next_steps' => [
            'verify_nonce' => 'Validate the nonce against your stored value',
            'process_challenge' => 'Use the challenge for PKCE verification',
            'handle_redirect' => 'Process the redirect_uri for final authentication'
        ]
    ];
    
    // Log the OAuth callback
    error_log("OAuth Callback Received: " . json_encode($response['oauth_params']));
    
    echo json_encode($response, JSON_PRETTY_PRINT);
    
} catch (Exception $e) {
    http_response_code(400);
    echo json_encode([
        'status' => 'error',
        'message' => $e->getMessage(),
        'timestamp' => date('Y-m-d H:i:s')
    ], JSON_PRETTY_PRINT);
}
?>