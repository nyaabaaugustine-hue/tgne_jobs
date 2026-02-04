<?php
$data = json_decode(file_get_contents('platform/core/core.json'), true);
$data['version'] = '1.17.1';
file_put_contents('platform/core/core.json', json_encode($data, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
echo 'Core.json updated';
