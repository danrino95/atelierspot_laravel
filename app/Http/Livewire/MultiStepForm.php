<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithFileUploads;
use App\Models\Listing;

class MultiStepForm extends Component
{
    use WithFileUploads;
    public $user_id;
    public $listing_name;

    public $totalSteps = 2;
    public $currentStep = 1;
    public function mount(){
        $this->currentStep =1 ;

    }
    public function render()
    {
        return view('livewire.multi-step-form');
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
                'user_id'=>'required'
            ]);
        }
    }
    public function register(){
        $this->resetErrorBag();
        if($this->currentStep == 2){
            $this->validate([
                'listing_name'=>'required',
            ]);
        }
        dd('Submited');
    }
}
