<?php

use Illuminate\Support\Facades\Route;

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

Route::middleware(['auth:sanctum',config('jetstream.auth_session'),'verified'])->group(function () {
    Route::get('dashboard', [\App\Http\Controllers\RedirectController::class, 'index'])->name('dashboard');
});

Route::group(['middleware' => 'auth'], function() {
    Route::group(['middleware' => 'role:admin', 'prefix' => 'admin', 'as' => 'admin.'], function() {
        Route::resource('dashboard', \App\Http\Controllers\Admin\DashboardController::class);
        Route::resource('tables', \App\Http\Controllers\Admin\AdminTablesController::class);
    });
   Route::group(['middleware' => 'role:business', 'prefix' => 'business', 'as' => 'business.'], function() {
       Route::resource('dashboard', \App\Http\Controllers\Business\DashboardController::class);
   });
    Route::group(['middleware' => 'role:client', 'prefix' => 'client', 'as' => 'client.'], function() {
        Route::resource('dashboard', \App\Http\Controllers\Client\DashboardController::class);
        Route::resource('registar', \App\Http\Controllers\BusinessRegistrationController::class);
    });
});