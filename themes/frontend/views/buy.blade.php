<x-app-layout>
	<style>
@import url('https://fonts.googleapis.com/css2?family=Righteous&display=swap');
		.form-glass{
			 backdrop-filter: blur(8px) saturate(400%);
    -webkit-backdrop-filter: blur(8px) saturate(400%);
    background-color: rgba(255, 255, 255, 0.43);
    border-radius: 12px;
    border: 1px solid rgba(209, 213, 219, 0.3);
width: 100%;
		}
		
		.input-glass{
			
			background: linear-gradient(271.79deg, rgba(255, 255, 255, 0.7) 1.07%, rgba(255, 255, 255, 0.6) 100.25%);
			box-shadow: 15px 21px 11px rgba(0, 0, 0, 0.15);
			border-radius: 0px;
			border: none;
			width: 100%;
			min-height: 40px;
			transition: 0.4s ease-in-out;
		}
		
		.input-glass-checkbox{
			
			background: linear-gradient(271.79deg, rgba(255, 255, 255, 0.7) 1.07%, rgba(255, 255, 255, 0.6) 100.25%);
			box-shadow: 15px 21px 11px rgba(0, 0, 0, 0.15);
			width: 80px;
			border: none !important;
			transition: 0.4s ease-in-out;
		}
		
		.input-glass:focus{
					border: none;
					text-decoration: none;
					outline: none;
					box-shadow: 2px 13px 9px rgba(0, 0, 0, 0.3);
		}
		
		body{
		background-color: #000000;
			background-image: 
				radial-gradient(at 47% 33%, hsl(165.00, 0%, 0%) 0, transparent 59%), radial-gradient(at 82% 65%, hsl(0.00, 0%, 100%) 0, transparent 55%), url('https://img.freepik.com/free-vector/realistic-polygonal-background_52683-61087.jpg?t=st=1657425636~exp=1657426236~hmac=c1f1a22ed018def09b318577d70e4049ffd9e79aae0c42a406f0fefb80a4b7cf&w=1380');
			background-repeat: no-repeat;
			background-size: 100%;
			height: 100vh;
			font-family: 'Righteous', cursive;
			background-attachment: fixed;
		}
		
		.form-glass-label{
font-style: normal;
font-size: 30px;
line-height: 48px;
color: #FFFFFF;
		}
		
		.form-glass-button{
			    border-color: #6b7280!important;
			align-items: center!important;
			border-radius: 0.375rem;
    font-size: .875rem;
			padding: 10px 40px;
			border:none;
			
		}
		
		.input-glass-checkbox:checked{
			background-color: black;
		}
		
		.form-check-label{
			color: white;
			font-size: 20px;
		}
	
	</style>
	
	<div class="container">
		<div class="form-glass p-3">
			<h1 class="text-white text-center">Registration Form</h1>
			<hr class="bg-white">
			<form class="p-5" name='razorpayform' action="{{route('payment.verify')}}" method="post">
		{{csrf_field()}}
		 <input type="hidden" name="razorpay_payment_id" id="razorpay_payment_id">
		<input type="hidden" name="razorpay_signature" id="razorpay_signature">
		<input type="hidden" name="razorpay_order_id" id="razorpay_order_id">
				<input hidden required type="number" class="input-glass" name="user_id"/>
								<div class="container mt-3">
				<h3 class="text-white">User Details</h3>
				<hr class="bg-white">
				</div>
		<div class="row mt-3 mb-3">
		<div class="col-lg-6 col-md-12 mt-4">
	<label class="form-glass-label">Listing name</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
	<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">Mobile Number</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
	<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">Whatsapp Number</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
	<div class="col-lg-6 col-md-12 mt-4">
	<label class="form-glass-label">DOB</label>
	<input type="date" class="input-glass" name="listing_name"/>
	</div>
				</div>
				<div class="container mt-5">
				<h3 class="text-white">Address Details</h3>
				<hr class="bg-white">
				</div>
		<div class="row">
		<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">Address Line 1</label>
			<input required type="number" class="input-glass" name="user_id"/>
	</div>
		<div class="col-lg-6 col-md-12 mt-4">
	<label class="form-glass-label">Address Line 2</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
	<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">Country</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
	<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">State</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
				<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">City</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
							<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">District</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
	<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">Pincode</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
				</div>
								<div class="container mt-5">
				<h3 class="text-white">Social Media Details</h3>
				<hr class="bg-white">
				</div>
						<div class="row">
		<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">Facebook</label>
			<input required type="number" class="input-glass" name="user_id"/>
	</div>
		<div class="col-lg-6 col-md-12 mt-4">
	<label class="form-glass-label">Instagram</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
	<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">Twitter</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
	<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">Linkedin</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
				<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">Youtube</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>
							<div class="col-lg-6 col-md-12 mt-4">
			<label class="form-glass-label">Pintrest</label>
	<input type="text" class="input-glass" name="listing_name"/>
	</div>

				</div>
											<div class="container mt-5">
				<h3 class="text-white">Categories</h3>
				<hr class="bg-white">
				</div>
						<div class="row">
			<div class="col-lg-4 col-md-6 col-sm-12">
		<input class="input-glass-checkbox" type="checkbox" name="NatureOfWork[]" id="Photographer" value="Photographer">
        <label class="form-check-label" for="Photographer"> Photographer </label>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-12">
                        <input class="input-glass-checkbox" type="checkbox" name="NatureOfWork[]" id="Videographer" value=" Videographer">
                        <label class="form-check-label" for="Videographer"> Videographer </label>
                        </div>
			<div class="col-lg-4 col-md-6 col-sm-12">
                        <input class="input-glass-checkbox" type="checkbox" name="NatureOfWork[]" id="Drone" value=" Drone">
                        <label class="form-check-label" for="Drone"> Drone </label>
                       </div>
			<div class="col-lg-4 col-md-6 col-sm-12">
                        <input class="input-glass-checkbox" type="checkbox" name="NatureOfWork[]" id="Video Editor" value=" Video Editor">
                        <label class="form-check-label" for="Video Editor"> Video Editor </label>
                        </div>
			<div class="col-lg-4 col-md-6 col-sm-12">
                        <input class="input-glass-checkbox" type="checkbox" name="NatureOfWork[]" id="Photo Editor / Album Designer" value="Photo Editor / Album Designer">
                        <label class="form-check-label" for="Photo Editor / Album Designer"> Photo Editor / Album Designer </label>
                        </div>
			<div class="col-lg-4 col-md-6 col-sm-12">
                          <input class="input-glass-checkbox" type="checkbox" name="NatureOfWork[]" id="Printer" value="Printer">
                        <label class="form-check-label" for="Printer"> Printer </label>
                        </div>
			<div class="col-lg-4 col-md-6 col-sm-12">
                          <input class="input-glass-checkbox" type="checkbox" name="NatureOfWork[]" id="Studio Rental" value="Studio Rental">
                        <label class="form-check-label" for="Studio Rental"> Studio Rental </label>
                         </div>
			<div class="col-lg-4 col-md-6 col-sm-12"> 
                          <input class="input-glass-checkbox" type="checkbox" name="NatureOfWork[]" id="Equipment Rental" value="Equipment Rental">
                        <label class="form-check-label" for="Equipment Rental"> Equipment Rental </label>
                         </div>
			<div class="col-lg-4 col-md-6 col-sm-12"> <input class="input-glass-checkbox" type="checkbox" name="NatureOfWork[]" id="PhotoBooth Printing" value="PhotoBooth Printing">
                        <label class="form-check-label" for="PhotoBooth Printing"> PhotoBooth Printing</label>
                         </div>
			<div class="col-lg-4 col-md-6 col-sm-12">

                          <input class="input-glass-checkbox" type="checkbox" name="NatureOfWork[]" id="PhotoBooth Rental" value="PhotoBooth Rental">
                        <label class="form-check-label" for="PhotoBooth Rental"> PhotoBooth Rental</label>
                         </div>
			<div class="col-lg-4 col-md-6 col-sm-12"><input class="input-glass-checkbox" type="checkbox" name="NatureOfWork[]" id="Sound Engineer" value="Sound Engineer">
                        <label class="form-check-label" for="Sound Engineer">Sound Engineer</label>
                         </div>
			<div class="col-lg-4 col-md-6 col-sm-12">
                          <input class="input-glass-checkbox" type="checkbox" name="NatureOfWork[]" id="Lighting Assistant" value="Lighting Assistant">
                        <label class="form-check-label" for="Lighting Assistant">Lighting Assistant</label>
				</div>
		</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 mt-2 text-center">
						<button class="form-glass-button mt-2" id="rzp-button1">Pay</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<!--	END-->
	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	<script>
	var options = @json($data);
		options.handler = function(response){
			console.log('response',response);
			document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
			document.getElementById('razorpay_signature').value = response.razorpay_signature;
			document.getElementById('razorpay_order_id').value = response.razorpay_order_id;
			document.razorpayform.submit();
		}
		var rzp1 = new Razorpay(options);
		document.getElementById('rzp-button1').onclick = function(e){
			rzp1.open();
			e.preventDefault();
}
		
	</script>
</x-app-layout>