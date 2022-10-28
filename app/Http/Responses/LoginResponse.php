<?php
 
namespace App\Http\Responses;
 
use Laravel\Fortify\Contracts\LoginResponse as LoginResponseContract;
 
class LoginResponse implements LoginResponseContract
{
    /**
     * @param  $request
     * @return mixed
     */
    public function toResponse($request)
    {

        if (auth()->user()->role_id == 1) {
            $home = route('admin.dashboard.index');
        }

        if (auth()->user()->role_id == 2) {
            $home = route('business.dashboard.index');
        }

        if (auth()->user()->role_id == 3) {
            $home = route('client.dashboard.index');
        }
 
        return redirect()->intended($home);
    }
}