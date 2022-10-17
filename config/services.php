<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],
	'razorpay'=>[
		
		'razorpay_key' => env('RAZORPAY_KEY'),
		'razorpay_secret' => env('RAZORPAY_SECRET'),
		
	],
    'google' => [
        'client_id' => '135729779208-9oobjvn7jqn2fn2a2lt3s3e4of7374v4.apps.googleusercontent.com',
        'client_secret' => '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',
        'redirect' => 'http://danrino.cf/callback/google',
      ], 
      'facebook' => [
        'client_id' => '1038454806829133',
        'client_secret' => '22115177a16a9e6008f85d86a96feb30',
        'redirect' => 'http://danrino.cf/auth/facebook',
      ], 

];
