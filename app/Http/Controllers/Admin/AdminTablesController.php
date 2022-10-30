<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use DB;

class AdminTablesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usersDetails = DB::table('users')
            ->join('user_business', 'users.id', '=', 'user_business.user_id')
            ->join('business_details', 'user_business.business_details_id', '=', 'business_details.id')
            ->join('business_emails', 'business_details.id', '=', 'business_emails.business_details_id')
            ->join('emails', 'business_emails.email_id', '=', 'emails.emails_id')
            ->join('business_phone', 'business_details.id', '=', 'business_phone.business_phone_id')
            ->join('phone_numbers', 'business_phone.phone_number_id', '=', 'phone_numbers.phone_number_id')
            ->join('address_business', 'business_details.id', '=', 'address_business.business_details_id')
            ->join('addresses', 'address_business.address_id', '=', 'addresses.id')
            ->select('users.id', 'business_details.business_name')
            ->get();
        return view('admin.business_tables',compact('usersDetails'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
