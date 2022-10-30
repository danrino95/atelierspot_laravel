<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

class RedirectController extends Controller
{
    public function index()
    {
        if(Gate::allows('admin')){
            return redirect()->route('admin.dashboard.index');
        }
        elseif(Gate::allows('business')){
            return redirect()->route('business.dashboard.index');
        }
        elseif(Gate::allows('client')){
            return redirect()->route('client.dashboard.index');
        }else{
            return redirect()->route('welcome');
        }
    }
}
