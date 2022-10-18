<x-app-layout>
    <!-- <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('Dashboard') }}</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        {{ __('You are logged in!') }}
                    </div>
                </div>
				@foreach($Listings as $Listing)
				<div class="card">
                    <div class="card-header">{{$Listing -> listing_name}}</div>

                    <div class="card-body">
						{{$Listing -> id}}
						{{$Listing -> listing_order_id}}
                        {{$Listing -> status}}
                    </div>
                </div>
				@endforeach
            </div>
        </div>
    </div> -->
    <link rel="stylesheet" href="http://atelierspot.com/style.css" />
    <div class="container-fluid fixed-top header disable-selection">
      <div class="row">
        <div class="col"></div>
        <div class="col-md-6">
          <div class="row">
            <div class="col">
              <h1><strong>Atelier Spot</strong></h1>
              <h3><strong>Coming Soon</strong></h3>
              <p class="small">– Do It All –</p>
              <!--.btn.btn-danger(href='#',role='button', onclick='cameraSet()') + ADD LINE-->
            </div>
          </div>
        </div>
        <div class="col"></div>
      </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/89/three.min.js"></script>
    <script src="https://github.com/mrdoob/three.js/blob/master/src/constants.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.3/TweenMax.min.js"></script>
    <script src="http://atelierspot.com/script.js"></script>
</x-app-layout>
