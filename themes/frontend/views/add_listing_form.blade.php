<x-app-layout>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
				<form method="post" action="{{route('insert-listing')}}">
					{{csrf_field()}}
					<input type="text" value="{{Auth::user()->id}}" placeholder="{{Auth::user()->id}}" name="user_id">
				<input type="text" placeholder="name" name="listing_name">
					<button type="submit">Submit</button>
				</form>
            </div>
        </div>
    </div>
</x-app-layout>
