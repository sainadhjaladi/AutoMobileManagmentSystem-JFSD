

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

  <title>Document</title>
  <style>
    .container-fluid.main {
      position: relative;
      /* To make the navbar positions relative to this container */
      padding: 0;
    }

    .navbar-default {
      background-image: none;
      background-color: transparent;
      /* Make the menu become transparent */
      border-radius: 0px;
      border: 0;
      box-shadow: none;
      padding: 10px;
      position: absolute;
      /* Make the menu out of the document flow so it can placed anywhere without disturbing other widgets */
      top: 0;
      left: 0;
      right: 0;
      z-index: 10;
      /* If you delete this line, your menu link won't be clicked because it is behind the background. Applying this code bring the menu in front of the background */
    }

    .navbar-default .navbar-brand {
      font-family: Verdana;
      color: #ffffff;
      font-size: 20px;
    }

    .navbar-default .navbar-brand:hover,
    .navbar-default .navbar-brand:focus {
      color: #ffffff;
      background-color: transparent;
    }

    .navbar-default .navbar-nav>li>a {
      color: #ffffff;
    }

    .navbar-default .navbar-nav>li>a:hover,
    .navbar-default .navbar-nav>li>a:focus {
      color: #ffffff;
      background-color: transparent;
    }

    .navbar-default .navbar-toggle {
      border-color: transparent;
    }

    .navbar-default .navbar-toggle:hover {
      background-color: transparent;
    }

    .navbar-default .navbar-toggle:focus {
      background-color: transparent;
    }

    .navbar-default .navbar-toggle .icon-bar {
      background-color: #ffffff;
    }

    .carousel .background {
      background-position: center center;
      background-size: 100% 100%;
      background-repeat: no-repeat;
      height: 100vh;
    }

    @media (max-width:991px) {
      .carousel .background {
        background-size: cover;
        /* To make the background image looks good */
      }
    }




    .carousel .background.b {
      background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://img.freepik.com/free-photo/view-car-running-high-speed_23-2150635424.jpg");
    }






    .carousel .background.c {
      background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://t4.ftcdn.net/jpg/05/52/88/89/360_F_552888933_CAoA9wNGXXNqdIvosrTTxAwhEfk05PKw.jpg");
    }



    .carousel .background.a {
      background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://wallpapers.com/images/hd/race-concept-car-art-th3w4l09g6182zp3.jpg");
    }





.carousel .background.a {
      background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D");
    }





    .carousel-fade .carousel-inner .item {
      opacity: 0;
      transition: opacity 0.5s;
      /* The 0.5s describes the duration to make the opacity from 0 to 1 */
    }

    .carousel-fade .carousel-inner .active {
      opacity: 1;
    }

    /* CSS Hack to trigger GPU for smooth transition */
    @media all and (transform-3d),
    (-webkit-transform-3d) {

      .carousel-fade .carousel-inner>.item.next,
      .carousel-fade .carousel-inner>.item.active.right {
        opacity: 0;
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
      }

      .carousel-fade .carousel-inner>.item.prev,
      .carousel-fade .carousel-inner>.item.active.left {
        opacity: 0;
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
      }

      .carousel-fade .carousel-inner>.item.next.left,
      .carousel-fade .carousel-inner>.item.prev.right,
      .carousel-fade .carousel-inner>.item.active {
        opacity: 1;
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
      }
    }

    /* CSS Hack to trigger GPU for smooth transition */

    .covertext {
      position: absolute;
      /* To make the div to be place anywhere. It is out of the document flow */
      top: 200px;
      /* The distance between the div with the top of document */
      left: 0px;
      /* Make the div full width */
      right: 0px;
      /* Make the div full width */
    }

    .title {
      font-family: Verdana;
      font-weight: 600;
      font-size: 60px;
      color: #ffffff;
      text-align: center;
    }

    .subtitle {
      font-family: Verdana;
      font-size: 23px;
      color: #ffffff;
      text-align: center;
    }

    .explore {
      text-align: center;
      margin-top: 10px;
    }

    .explore .btn-lg,
    .explore .btn-lg:hover {
      border-radius: 30px;
      padding: 15px 25px;
      font-size: 22px;
      background-image: none;
      background-color: #FF4000;
      border-color: #FF4000;
      color: #ffffff;
    }

    .btn,
    .btn:hover {
      border-radius: 0px;
      background-image: none;
      background-color: #FF4000;
      border-color: #FF4000;
      color: #ffffff;
      margin-bottom: 20px;
      box-shadow: none;
      outline: none;
    }

    .btn:focus,
    .btn:active:focus,
    .btn.active:focus,
    .btn.focus,
    .btn:active.focus,
    .btn.active.focus {
      color: #ffffff;
      outline: none;
    }
  </style>
</head>

<body>

<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/6491355094cf5d49dc5eb953/1h3bjggr7';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->




  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>






  <script>/* When your mouse cursor enter the background, the fading won't pause and keep playing */
    $('.carousel').carousel({
      pause: "false" /* Change to true to make it paused when your mouse cursor enter the background */
    });</script>







  <div class="container-fluid main">

    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">AutoMobile</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav">
           
         
            <li><a href="cart">My cart</a></li>
            <li><a href="reviews">Book Vehicle</a></li>
            <li><a href="services">Services</a></li>
            <li><a href="Parts">Parts Procurement</a></li>
            <li><a href="upadate">Update Profile</a></li>
            <li><a href="">${cname}</a></li>
            <li><a href="/">logout</a></li>
           
            
          </ul>
        </div>
      </div>
    </nav>

    <div id="myCarousel" class="carousel carousel-fade slide" data-ride="carousel" data-interval="3000">
      <div class="carousel-inner" role="listbox">
        <div class="item active background a"></div>
        <div class="item background b"></div>
        <div class="item background c"></div>
      </div>
    </div>

    <div class="covertext">
      <div class="col-lg-10" style="float:none; margin:0 auto;">
        <h1 class="title"> Automobile management system
        </h1>
        <h3 class="subtitle">Revolutionizing Automotive Operations: Advanced Automobile Management System</h3>
      </div>
      <div class="col-xs-12 explore">
        <a href="module"><button type="button" class="btn btn-lg explorebtn">EXPLORE</button></a>
      </div>
    </div>

  </div>
</body>

</html>