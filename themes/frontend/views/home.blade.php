<x-app-layout>
    <div class="container">
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
    </div>
</x-app-layout>
