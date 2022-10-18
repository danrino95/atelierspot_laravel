<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Atelier Spot</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css"
    />
    <link rel="stylesheet" href="http://atelierspot.com/style.css" />
  </head>
  <body> 
    <div class="container-fluid fixed-top header disable-selection">
      <div class="row" style="
    display: flex;
    justify-content: center;
">
        <div class="col-md-6">
          <div class="row">
            <div class="col">
            <h3><strong>Welcome {{ Auth::user()->name }}</strong></h3>
              <h1 style="letter-spacing: 30px;"><strong>SECLA</strong></h1>
              <h5 style="letter-spacing: 30px;"><b>BY|ATELIERSPOT</b></h5>
              <h3 style="margin-top:10px;">Coming Soon</h3>
                            <a class="btn" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </div>
          </div>
        </div>
      </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/89/three.min.js"></script>
    <script src="https://github.com/mrdoob/three.js/blob/master/src/constants.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.3/TweenMax.min.js"></script>
    <script src="http://atelierspot.com/script.js"></script>
    </body>
</html>