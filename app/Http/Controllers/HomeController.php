<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Log;
use DB;

class HomeController extends Controller
{
   public function home(){
    
	   $Listings = DB::table('listing')
        ->join('orders','orders.order_id','=','listing.listing_order_id')
		->join('users','users.id','=','listing.user_id')
		->where('status','paid')
        ->select('users.*','listing.*','orders.*')
        ->get();
	   
    return view('home',['Listings' => $Listings]);
   }
}
