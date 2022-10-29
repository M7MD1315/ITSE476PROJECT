<!DOCTYPE html>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap-style.css" rel="stylesheet">
</head>
<body>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="web-banner" style="object-fit:cover;" class="first-slide img-responsive" src="images/banner1.jpg" alt="First slide">
          <img class="mobile-banner" style="object-fit:cover; display:none" class="first-slide img-responsive" src="images/banner1-mobile.jpg" alt="First slide">
        </div>
        <div class="item">
          <img class="web-banner" style="object-fit:cover;" class="second-slide img-responsive" src="images/banner2.jpg" alt="Second slide">
          <img class="mobile-banner" style="object-fit:cover; display:none" class="second-slide img-responsive" src="images/banner2.jpg" alt="Second slide">
        </div>
        <div class="item">
          <img class="web-banner" style="object-fit:cover;" class="third-slide img-responsive" src="images/banner3.jpg" alt="Third slide">
          <img class="mobile-banner" style="object-fit:cover; display:none" class="third-slide img-responsive" src="images/banner3-mobile.jpg" alt="Third slide">
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </body>
  </html>
