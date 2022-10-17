<x-app-layout>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
				@foreach ($products as $product)
                <div class="card mt-3">
                    <div class="card-body">
             <p>{{$product->name}}</p>
						<p>{{$product->price}}</p>
						<a href="{{route('buy',['product' => $product->id])}}">Buy</a>
                    </div>
                </div>
				@endforeach
            </div>
        </div>
    </div>
</x-app-layout>
