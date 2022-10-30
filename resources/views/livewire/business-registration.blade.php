<div>
    
    <form wire:submit.prevent="register">

        {{-- STEP 1 --}}

        @if ($currentStep == 1)
            
     
        <div class="step-one">
            <div class="card">
                <div class="card-header bg-secondary text-white">STEP 1/4 - Tell Us About Ur Business</div>
                <div class="card-body">
                    <div class="row">
                        <div class="mb-3">
                            <label class="form-label" for="basic-icon-default-fullname">Business Name</label>
                            <div class="input-group input-group-merge">
                              <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                              <input wire:model="business_name" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2" autocomplete="cc-name">
                              <span class="text-danger">@error('business_name'){{ $message }}@enderror</span>
                            </div>
                          </div>
                          <div class="mb-3">
                            <label for="formFile" class="form-label">Logo</label>
                            <input class="form-control" type="file" id="formFile" wire:model="business_profile_pic">
                            <span class="text-danger">@error('business_profile_pic'){{ $message }}@enderror</span>
                          </div>
                          <div class="mb-3">
                            <label class="form-label" for="basic-icon-default-fullname">Business Tagline (optional)</label>
                            <div class="input-group input-group-merge">
                              <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                              <input wire:model="business_tagline" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="Just do it!!"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2" autocomplete="pager">
                              <span class="text-danger">@error('business_tagline'){{ $message }}@enderror</span>
                            </div>
                          </div>
                          <div class="mb-3">
                            <label class="form-label" for="basic-icon-default-message">About your Business</label>
                            <div class="input-group input-group-merge">
                              <span id="basic-icon-default-message2" class="input-group-text"><i class="bx bx-comment"></i></span>
                              <textarea id="basic-icon-default-message" wire:model = "business_about" class="form-control" placeholder="Tell us about your business" aria-label="Hi, Do you have a moment to talk Joe?" aria-describedby="basic-icon-default-message2" autocomplete="pager"></textarea>
                            </div>
                            <span class="text-danger">@error('business_about'){{ $message }}@enderror</span>
                          </div>
                    </div>
                </div>
            </div>
        </div>
        @endif

        {{-- STEP 2 --}}

        @if ($currentStep == 2)
            
       
        <div class="step-two">
            <div class="card">
                <div class="card-header bg-secondary text-white">STEP 2/4 - Contacts</div>
                <div class="card-body">
                    <div class="row">

                        <div class="mb-3">
                            <label class="form-label" for="basic-icon-default-fullname">Phone Number</label>
                            <div class="input-group input-group-merge">
                              <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                              <input wire:model="phone_number" type="number" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2" autocomplete="mobile">
                            </div>
                          </div>
                          <div class="mb-3">
                            <label class="form-label" for="basic-icon-default-fullname">Whatsapp Business</label>
                            <div class="input-group input-group-merge">
                              <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                              <input wire:model="whatsapp_number" type="number" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2" autocomplete="mobile">
                            </div>
                          </div>
                          <div class="mb-3">
                            <label class="form-label" for="basic-icon-default-fullname">Email</label>
                            <div class="input-group input-group-merge">
                              <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                              <input wire:model="email" type="email" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2" autocomplete="email">
                            </div>
                          </div>
                    </div>
                </div>
            </div>
        </div>

        @endif
        {{-- STEP 3 --}}

        @if ($currentStep == 3)
            
    
        <div class="step-three">
            <div class="card">
                <div class="card-header bg-secondary text-white">STEP 3/4 - Address</div>
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label" for="basic-icon-default-fullname">Address Line 1</label>
                        <div class="input-group input-group-merge">
                          <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                          <input wire:model="address_line_1" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2" autocomplete="address-line1">
                        </div>
                      </div>
                      <div class="mb-3">
                        <label class="form-label" for="basic-icon-default-fullname">Address Line 2</label>
                        <div class="input-group input-group-merge">
                          <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                          <input wire:model="address_line_2" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2" autocomplete="address-line2">
                        </div>
                      </div>
                      <div class="mb-3">
                        <label class="form-label" for="basic-icon-default-fullname">City</label>
                        <div class="input-group input-group-merge">
                          <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                          <input wire:model="address_city" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2" autocomplete="city">
                        </div>
                      </div>
                      <div class="mb-3">
                        <label class="form-label" for="basic-icon-default-fullname">District</label>
                        <div class="input-group input-group-merge">
                          <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                          <input wire:model="address_district" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2" autocomplete="district">
                        </div>
                      </div>
                      <div class="mb-3">
                        <label class="form-label" for="basic-icon-default-fullname">State</label>
                        <div class="input-group input-group-merge">
                          <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                          <input wire:model="address_state" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2" autocomplete="state">
                        </div>
                      </div>
                      <div class="mb-3">
                        <label class="form-label" for="basic-icon-default-fullname">Country</label>
                        <div class="input-group input-group-merge">
                          <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                          <input wire:model="address_country" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2" autocomplete="country">
                        </div>
                      </div>
                      <div class="mb-3">
                        <label class="form-label" for="basic-icon-default-fullname">Pincode</label>
                        <div class="input-group input-group-merge">
                          <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                          <input wire:model="address_pincode" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                        </div>
                      </div>
                </div>
            </div>
        </div>
        @endif

        {{-- STEP 4 --}}
        @if ($currentStep == 4)
            
    
        <div class="step-four">
            <div class="card">
                <div class="card-header bg-secondary text-white">STEP 4/4 - Attachments</div>
                <div class="card-body">
                   
                  <div class="mb-3">
                    <label class="form-label" for="basic-icon-default-fullname">gov_registered_number</label>
                    <div class="input-group input-group-merge">
                      <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                      <input wire:model="gov_registered_number" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                    </div>
                  </div>

                  <div class="mb-3">
                    <label class="form-label" for="basic-icon-default-fullname">business_lisence_number</label>
                    <div class="input-group input-group-merge">
                      <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                      <input wire:model="business_lisence_number" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="Just do it!!"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                    </div>
                  </div>
                </div>
            </div>
        </div>

        @endif
                {{-- STEP 4 --}}
                @if ($currentStep == 5)
            
    
                <div class="step-five">
                    <div class="card">
                        <div class="card-header bg-secondary text-white">STEP 5/5 - Documents</div>
                        <div class="card-body">
                            <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">Business Name</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="business_name" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                                </div>
                              </div>
            
                              <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">Business Tagline (optional)</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="business_tagline" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="Just do it!!"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                                </div>
                              </div>
                              <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-message">About your Business</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-message2" class="input-group-text"><i class="bx bx-comment"></i></span>
                                  <textarea id="basic-icon-default-message" wire:model = "business_about" class="form-control" placeholder="Tell us about your business" aria-label="Hi, Do you have a moment to talk Joe?" aria-describedby="basic-icon-default-message2"></textarea>
                                </div>
                              </div>
                            <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">Phone Number</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="phone_number" type="number" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                                </div>
                              </div>
                              <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">Whatsapp Business</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="whatsapp_number" type="number" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                                </div>
                              </div>
                              <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">Email</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="email" type="email" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                                </div>
                              </div>
                            <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">Address Line 1</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="address_line_1" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                                </div>
                              </div>
                              <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">Address Line 2</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="address_line_2" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                                </div>
                              </div>
                              <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">City</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="address_city" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                                </div>
                              </div>
                              <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">District</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="address_district" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                                </div>
                              </div>
                              <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">State</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="address_state" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                                </div>
                              </div>
                              <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">Pincode</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="address_pincode" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                                </div>
                              </div>
                              <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">gov_registered_number</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="gov_registered_number" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="AtelierSpot"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
                                </div>
                              </div>
            
                              <div class="mb-3">
                                <label class="form-label" for="basic-icon-default-fullname">business_lisence_number</label>
                                <div class="input-group input-group-merge">
                                  <span id="basic-icon-default-fullname2" class="input-group-text"><i class='bx bxs-business'></i></span>
                                  <input wire:model="business_lisence_number" type="text" class="form-control" id="basic-icon-default-fullname" placeholder="Just do it!!"  aria-label="John Doe" aria-describedby="basic-icon-default-fullname2">
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

           @if ($currentStep == 2 || $currentStep == 3 || $currentStep == 4 || $currentStep == 5)
               <button type="button" class="btn btn-md btn-secondary" wire:click="decreaseStep()">Back</button>
           @endif
           
           @if ($currentStep == 1 || $currentStep == 2 || $currentStep == 3 || $currentStep == 4)
               <button type="button" class="btn btn-md btn-success" wire:click="increaseStep()">Next</button>
           @endif
           
           @if ($currentStep == 5)
                <button type="submit" class="btn btn-md btn-primary">Submit</button>
           @endif
               
              
        </div>

    </form>


</div>
