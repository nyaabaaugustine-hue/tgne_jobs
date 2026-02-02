<?php

return [
    /*
    |--------------------------------------------------------------------------
    | Cloudinary Configuration
    |--------------------------------------------------------------------------
    |
    | An HTTP or HTTPS URL to notify your application (a webhook) when videos
    | and images are uploaded or when a deletion request completes.
    |
    */
    'notification_url' => env('CLOUDINARY_NOTIFICATION_URL'),

    /*
    |--------------------------------------------------------------------------
    | Cloudinary Upload Preset
    |--------------------------------------------------------------------------
    |
    | Upload preset to use when uploading images
    |
    */
    'upload_preset' => env('CLOUDINARY_UPLOAD_PRESET', 'jobbox_upload'),

    /*
    |--------------------------------------------------------------------------
    | Cloudinary Folder
    |--------------------------------------------------------------------------
    |
    | Folder to store images in Cloudinary
    |
    */
    'folder' => env('CLOUDINARY_FOLDER', 'jobbox'),

    /*
    |--------------------------------------------------------------------------
    | Cloudinary Quality
    |--------------------------------------------------------------------------
    |
    | Image quality for uploaded images (auto, eco, good, best)
    |
    */
    'quality' => env('CLOUDINARY_QUALITY', 'auto'),

    /*
    |--------------------------------------------------------------------------
    | Cloudinary Format
    |--------------------------------------------------------------------------
    |
    | Image format for uploaded images (auto, jpg, png, webp)
    |
    */
    'format' => env('CLOUDINARY_FORMAT', 'auto'),

    /*
    |--------------------------------------------------------------------------
    | Cloudinary Transformation
    |--------------------------------------------------------------------------
    |
    | Default transformation for uploaded images
    |
    */
    'transformation' => [
        'quality' => env('CLOUDINARY_QUALITY', 'auto'),
        'fetch_format' => env('CLOUDINARY_FORMAT', 'auto'),
    ],
];