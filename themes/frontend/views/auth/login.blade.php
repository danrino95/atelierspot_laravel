<x-app-layout>
    <section class="vh-100" style="height:100vh">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
      <form method="POST" action="{{ route('login') }}">
                            @csrf
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
            <p class="lead fw-normal mb-0 me-3">Sign in with</p>
            <a href="{{ url('auth/google') }}"  class="btn btn-primary btn-floating mx-1">
                  <strong><i class="fab fa-facebook-f"></i></strong>
                </a> 
                <a href="{{ url('auth/facebook') }}"  class="btn btn-primary btn-floating mx-1">
                  <strong><i class="fab fa-twitter"></i></strong>
                </a> 
                <a href="{{ url('auth/github') }}"  class="btn btn-primary btn-floating mx-1">
                  <strong><i class="fab fa-linkedin-in"></i></strong>
                </a>
          </div>

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">Or</p>
          </div>

          <!-- Email input -->
          <div class="form-outline mb-4">
          <input id="email" type="email" id="form3Example3" class="form-control form-control-lg @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus
              placeholder="Enter a valid email address" />
            <label class="form-label" for="form3Example3">Email address</label>
            @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password" id="form3Example4" class="form-control form-control-lg @error('password') is-invalid @enderror" name="password" required autocomplete="current-password"
              placeholder="Enter password" />
            <label class="form-label" for="form3Example4">Password</label>
            @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
            
          </div>

          <div class="d-flex justify-content-between align-items-center">
            <!-- Checkbox -->
            <div class="form-check mb-0">
              <input class="form-check-input me-2" type="checkbox" value="" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }} />
              <label class="form-check-label" for="form2Example3">
                Remember me
              </label>
            </div>
            <a href="#!" class="text-body">Forgot password?</a>
          </div>
          <div class="mb-0 form-group row">
          <div class="text-center text-lg-start mt-4 pt-2">
            <button type="submit" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>

                @if (Route::has('password.request'))
                                        <a class="btn btn-primary btn-lg" href="{{ route('password.request') }}">
                                            {{ __('Forgot Your Password?') }}
                                        </a>
                                    @endif
          </div>

        </form>
      </div>
    </div>
  </div>
</section>
</x-app-layout>
