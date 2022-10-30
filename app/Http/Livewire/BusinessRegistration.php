<?php

namespace App\Http\Livewire;
use Livewire\WithFileUploads;
use Livewire\Component;
use App\Models\Business;
use App\Models\Addresses;
use App\Models\Phone;
use App\Models\Email;
use App\Models\User_business;
use App\Models\Address_business;
use App\Models\Business_phone;
use App\Models\Business_emails;
use DB;
use Illuminate\Support\Facades\Auth;


class BusinessRegistration extends Component
{
    use WithFileUploads;

    public $business_name;
    public $business_about;
    public $business_tagline;
    // 
    public $email;
    public $phone_number;
    public $whatsapp_number;
    // 
    public $address_type_id;
    public $address_line_1;
    public $address_line_2;
    public $address_city;
    public $address_state;
    public $address_country;
    public $address_pincode;
    public $address_district;
// 
public $gov_registered_number;
public $business_lisence_number;
    public $business_profile_pic;
    // public $terms;

    public $totalSteps = 5;
    public $currentStep = 1;


    public function mount(){
        $this->currentStep = 1;
    }


    public function render()
    {
        return view('livewire.business-registration');
    }

    public function increaseStep(){
        $this->resetErrorBag();
        $this->validateData();
         $this->currentStep++;
         if($this->currentStep > $this->totalSteps){
             $this->currentStep = $this->totalSteps;
         }
    }

    public function decreaseStep(){
        $this->resetErrorBag();
        $this->currentStep--;
        if($this->currentStep < 1){
            $this->currentStep = 1;
        }
    }

    public function validateData(){

        if($this->currentStep == 1){
            $this->validate([
                'business_name'=>'required|string',
                'business_tagline'=>'required|string',
                'business_about'=>'required',
                'business_profile_pic'=>'required|mimes:jpg',
            ]);
        }
        elseif($this->currentStep == 2){
              $this->validate([
                 'email'=>'required|email',
                 'phone_number'=>'required',
              ]);
        }
        elseif($this->currentStep == 3){
              $this->validate([
                  'address_country'=>'required'
              ]);
        }
        elseif($this->currentStep == 4){
            $this->validate([
                'business_lisence_number'=>'required',
            ]);
        }
    }

    public function register(){
          $this->resetErrorBag();
          if($this->currentStep == 5){
              $this->validate([
                  'address_country'=>'required',
              ]);
          }

          $business_profile_pic_name = 'BusinessProfilePic_'.time().$this->business_profile_pic->getClientOriginalName();
          $upload_business_profile_pic = $this->business_profile_pic->storeAs('business_profile_pic', $business_profile_pic_name);

          if($upload_business_profile_pic){
            $address_type_id = 2;

              $phone = array(
                "phone_number"=>$this->phone_number,
              );
              $whatsapp = array(
                "phone_number"=>$this->whatsapp_number,
            );
              $email = array(
                "email"=>$this->email,
              );
              $business = array(
                "business_profile_pic"=>$business_profile_pic_name,
                "business_name"=>$this->business_name,
                "business_about"=>$this->business_about,
                "business_tagline"=>$this->business_tagline,
                "business_lisence_number"=>$this->business_lisence_number,
                "gov_registered_number"=>$this->gov_registered_number,
              );
              $address = array(
                "address_type_id"=>$address_type_id,
    "address_line_1"=>$this->address_line_1,
    "address_line_2"=>$this->address_line_2,
    "address_city"=>$this->address_city,
    "address_state"=>$this->address_state,
    "address_country"=>$this->address_country,
    "address_pincode"=>$this->address_pincode,
    "address_district"=>$this->address_district,
              );

              DB::transaction(function() use ($business,$address,$phone,$whatsapp,$email) {
                Business::insert($business);
                $business_id= Business::where('gov_registered_number', $this->gov_registered_number)->value('id');
                $user =  Auth::user()->id;
                $user_business = array(
                    "user_id"=>$user,
                    "business_details_id"=>$business_id,
                );
                User_business::insert($user_business);
                // 
                $address_id = Addresses::insertGetId($address);
                $address_business = array(
                    "address_id"=>$address_id,
                    "business_details_id"=>$business_id,
                );
                Address_business::insert($address_business);
                $phone_number_id = Phone::insertGetId($phone);
                $business_phone = array(
                    "phone_number_id"=>$phone_number_id,
                    "business_details_id"=>$business_id,
                );
                Business_phone::insert($business_phone);
                $phone_number_wa_id = Phone::insertGetId($whatsapp);
                $business_phone_wa = array(
                    "phone_number_id"=>$phone_number_wa_id,
                    "business_details_id"=>$business_id,
                );
                Business_phone::insert($business_phone_wa);

                $email_id = Email::insertGetId($email);
                $business_email = array(
                    "email_id"=>$email_id,
                    "business_details_id"=>$business_id,
                );
                Business_emails::insert($business_email);
            });
              $this->reset();
              $this->currentStep = 1;
            // if (auth()->user()->role_id == 1) {
            //     $home = route('admin.dashboard.index');
            // }
    
            // if (auth()->user()->role_id == 2) {
            //     $home = route('business.dashboard.index');
            // }
    
            // if (auth()->user()->role_id == 3) {
            //     $home = route('client.dashboard.index');
            // }
     
            // return redirect()->intended($home);
          }
    }
}
