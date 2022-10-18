<?php
 
 namespace App\Http\Controllers\Auth;
   
 use App\Http\Controllers\Controller;
 use Socialite;
 use Auth;
 use Exception;
 use App\Models\User;
 
class TwitterSocialController extends Controller
{
    public function loginwithTwitter()
    {
        return Socialite::driver('twitter')->redirect();
    }
        
 
    public function cbTwitter()
    {
        try {
      
            $user = Socialite::driver('twitter')->user();
       
            $userWhere = User::where('twitter_id', $user->id)->first();
       
            if($userWhere){
       
                Auth::login($userWhere);
      
                return redirect('/home');
       
            }else{
                $gitUser = User::create([
                    'name' => $user->name,
                    'email' => $user->email,
                    'twitter_id'=> $user->id,
                    'oauth_type'=> 'twitter',
                    'password' => encrypt('admin595959')
                ]);
      
                Auth::login($gitUser);
       
                return redirect('/home');
            }
      
        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }
}