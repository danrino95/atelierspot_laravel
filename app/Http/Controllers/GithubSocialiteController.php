<?php
namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Controller;
use Socialite;
use Auth;
use Exception;
use App\Models\User;

class GithubSocialiteController extends Controller
{
    /**
     * Redirect the user to the GitHub authentication page.
     * Also passes a `redirect` query param that can be used
     * in the handleProviderCallback to send the user back to
     * the page they were originally at.
     *
     * @param Request $request
     * @return Response
     */
    public function redirectToProvider(Request $request)
    {
        return Socialite::driver('github')
            ->with(['redirect_uri' => 'https://danrino.cf/auth/github/callback' . '?redirect=' . $request->input('redirect')])
            ->redirect();
    }
    /**
     * Obtain the user information from GitHub.
     * If a "redirect" query string is present, redirect
     * the user back to that page.
     *
     * @param Request $request
     * @return Response
     */
    public function handleProviderCallback(Request $request)
    {
        try {
     
            $user = Socialite::driver('github')->user();
      
            $finduser = User::where('social_id', $user->id)->first();
      
            if($finduser){
      
                Auth::login($finduser);
     
                return redirect('/home');
      
            }else{
                $newUser = User::create([
                    'name' => $user->name,
                    'email' => $user->email,
                    'social_id'=> $user->id,
                    'social_type'=> 'github',
                    'password' => encrypt('my-github')
                ]);
     
                Auth::login($newUser);
      
                return redirect('/home');
            }
     
        } catch (Exception $e) {
            dd($e->getMessage());
        }

        // 
        // $user = Socialite::driver('github')->user();

        // Session::put('user', $user);

        // $redirect = $request->input('redirect');
        // if($redirect)
        // {
        //     return redirect($redirect);
        // }
        // return 'GitHub auth successful. Now navigate to a demo.';
    }
}
