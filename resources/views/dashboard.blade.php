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
      <div class="row">
        <div class="col"></div>
        <div class="col-md-6">
          <div class="row">
            <div class="col">
            <h3><strong>Welcome {{ Auth::user()->name }}</strong></h3>
              <h1><strong>S E C L A</strong></h1>
              <h5>BY ATELIERSPOT</h5>
              <h3><strong>Coming Soon</strong></h3>
              <p class="small">– Do It All –</p>
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
    </body>
</html>