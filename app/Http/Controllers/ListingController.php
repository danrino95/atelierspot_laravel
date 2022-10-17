<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class ListingController extends Controller
{
	public function form(){
		return view('add_listing_form');
	}
	public function insert(Request $request){;
		return redirect('/product/buy/2');
	}
}
