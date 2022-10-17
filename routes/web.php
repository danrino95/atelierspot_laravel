<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ListingController;
use App\Models\Product;
use App\Models\order;
use Razorpay\Api\Api;
use Illuminate\Http\Request;
use Razorpay\Api\Errors\SignatureVerificationError;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

use App\Http\Controllers\Auth\GoogleSocialiteController;
 
 
Route::get('auth/google', [GoogleSocialiteController::class, 'redirectToGoogle']);
Route::get('callback/google', [GoogleSocialiteController::class, 'handleCallback']);



Route::get('/home',[HomeController::class,'home'])->middleware(['auth'])->name('home');

Route::get('/products',function(){
	$products = Product::all();
	
	return view('list')->with('products',$products);
})->middleware(['auth'])->name('list');



Route::get('/product/buy/{product}',function(Product $product){
	$api_key = config('services.razorpay.razorpay_key') ;
	$api_secret = config('services.razorpay.razorpay_secret') ;
	$api = new Api($api_key, $api_secret);
	
$orderData = [
    'receipt'         => 'receipt_id',
    'amount'          => $product->price * 100,
    'currency'        => 'INR'
];

$razorpayOrder = $api->order->create($orderData);
	
	$jsondata = [
	"key" =>  $api_key,
    "amount" => $product->price * 100,
    "currency" => "INR",
    "name" => "Acme Corp",
    "description" => "Test Transaction",
    "image" => "https://dess.dess-deryl.in/assets/img/logo.png",
	"order_id" => $razorpayOrder['id'],
    "prefill" => [
        "name" => "DESS",
        "email" => "dess.danrino@gmail.com",
        "contact" => "8010227485"
    ],
];
	
	order::create([
			'user_id' => Auth::user()->id,
			'product_id' => $product->id,
			'order_id' => $razorpayOrder['id'],
		    'amount'=> $product->price,
	]);
	
	$order_id = order::select('id')->MAX('id')->get();
	$data2 = [
		'order_id' => $order_id
	];
	
return view('buy')->with('product',$product)->with('data',$jsondata);
	
})->middleware(['auth'])->name('buy');

Route::post('payment-verify',function(Request $request){
	
	$api_key = config('services.razorpay.razorpay_key') ;
	$api_secret = config('services.razorpay.razorpay_secret') ;
	$api = new Api($api_key, $api_secret);
	
	 $attributes = [
            'razorpay_order_id' => $request->input('razorpay_order_id'),
            'razorpay_payment_id' => $request->input('razorpay_payment_id'),
            'razorpay_signature' => $request->input('razorpay_signature')
        ];
	try {
		$api->utility->verifyPaymentSignature($attributes);
		order::where('order_id',$request->input('razorpay_order_id'))->update([
			'razorpay_payment_id' =>  $request->input('razorpay_payment_id'),
			'razorpay_signature' => $request->input('razorpay_signature'),
			'status' => 'paid',
		]);
		
		$user_id = $request->input('user_id');
		$listing_name = $request->input('listing_name');
		$listing_order_id = $request->input('razorpay_order_id');
		
		$data = [
			'user_id' =>$user_id,
			'listing_name' => $listing_name,
			'listing_order_id' => $listing_order_id
		];
		
		DB::table('listing')->insert($data);
		
		return response(['message'=>'verification success'],200);
	}
	catch(SignatureVerificationError $e)
    {
        return response(['message'=>'verification faild'],400);
    }
	
	return $request->all();
	
})->name('payment.verify');

Route::get('add_listing',[ListingController::class,'form'])->name('add-listing');
Route::any('insert_listing',[ListingController::class,'insert'])->name('insert-listing');

require __DIR__.'/auth.php';
require __DIR__.'/admin.php';
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
