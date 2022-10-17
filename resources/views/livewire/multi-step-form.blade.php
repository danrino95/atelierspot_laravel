<div>
     @if ($currentStep == 1)
   <div class="step-one">
    <div class="card">
        <div class="card-header bg-secondary text-white">Step 1/2</div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <label for="">ID</label>
                    <input required type="number" class="form-control" name="user_id" wire:model="user_id" />
                    <span class="text-danger">@error('user_id'){{$message}}@enderror</span>
                </div>
            </div>
        </div>
    </div>
</div>
@endif
@if ($currentStep == 2)
<div class="step-one">
    <div class="card">
        <div class="card-header bg-secondary text-white">Step 2/2</div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <label for="">Name</label>
                    <input type="text" class="form-control" name="listing_name" wire:model="listing_name" />
                    <span class="text-danger">@error('listing_name'){{$message}}@enderror</span>
                </div>
            </div>
        </div>
    </div>
</div>
@endif
<div class="action-buttons d-flex justify-content-between bg-white pt-2 pb-2">

@if ($currentStep == 1)
    <div></div>
@endif

@if ($currentStep == 2)
    <button type="button" class="btn btn-md btn-secondary" wire:click="decreaseStep()">Back</button>
@endif

@if ($currentStep == 1)
    <button type="button" class="btn btn-md btn-success" wire:click="increaseStep()">Next</button>
@endif

@if ($currentStep == 2)
<button id="rzp-button1">Pay</button>
@endif
    
   
</div>
</div>
