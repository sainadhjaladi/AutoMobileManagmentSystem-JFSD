
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Blog Cards</title>
  <style>
    body {
      background: url('https://t4.ftcdn.net/jpg/05/52/88/89/360_F_552888933_CAoA9wNGXXNqdIvosrTTxAwhEfk05PKw.jpg');
      display: flex;
      flex-direction: column;
      font-size: 1rem;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    * {
      box-sizing: border-box;
    }

    .blog-card {
      display: flex;
      flex-direction: column;
      margin: 1rem auto;
      box-shadow: 0 3px 7px -1px rgba(0, 0, 0, .1);
      margin-bottom: 1.6%;
      background: #fff;
      line-height: 1.4;
      font-family: sans-serif;
      border-radius: 5px;
      overflow: hidden;
      z-index: 0;
    }

    .blog-card a {
      color: inherit;
    }

    .blog-card a:hover {
      color: #5ad67d;
    }

    .blog-card:hover .photo {
      transform: scale(1.3) rotate(3deg);
    }

    .blog-card .meta {
      position: relative;
      z-index: 0;
      height: 200px;
    }

    .blog-card .photo {
      position: absolute;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      background-size: cover;
      background-position: center;
      transition: transform .2s;
    }

    .blog-card .details,
    .blog-card .details ul {
      margin: auto;
      padding: 0;
      list-style: none;
    }

    .blog-card .details {
      position: absolute;
      top: 0;
      bottom: 0;
      left: -100%;
      margin: auto;
      transition: left .2s;
      background: rgba(0, 0, 0, .6);
      color: #fff;
      padding: 10px;
      width: 100%;
      font-size: .9rem;
    }

    .blog-card .details a {
      text-decoration: dotted underline;
    }

    .blog-card .details ul li {
      display: inline-block;
    }

    .blog-card .details .author:before {
      font-family: FontAwesome;
      margin-right: 10px;
      content: "\f007";
    }

    .blog-card .details .date:before {
      font-family: FontAwesome;
      margin-right: 10px;
      content: "\f133";
    }

    .blog-card .details .tags ul:before {
      font-family: FontAwesome;
      content: "\f02b";
      margin-right: 10px;
    }

    .blog-card .details .tags li {
      margin-right: 2px;
    }

    .blog-card .details .tags li:first-child {
      margin-left: -4px;
    }

    .blog-card .description {
      padding: 1rem;
      background: #fff;
      position: relative;
      z-index: 1;
    }

    .blog-card .description h1,
    .blog-card .description h2 {
      font-family: Poppins, sans-serif;
    }

    .blog-card .description h1 {
      line-height: 1;
      margin: 0;
      font-size: 1.7rem;
    }

    .blog-card .description h2 {
      font-size: 1rem;
      font-weight: 300;
      text-transform: uppercase;
      color: #a2a2a2;
      margin-top: 5px;
    }

    .blog-card .description .read-more {
      text-align: right;
    }

    .blog-card .description .read-more a {
      display: inline-block;
      padding: 8px 16px;
      background: #5ad67d;
      color: #fff;
      text-decoration: none;
      border-radius: 5px;
      transition: background 0.3s;
    }

    .blog-card .description .read-more a:hover {
      background: #3e9a5b;
    }

    .blog-card .description p {
      position: relative;
      margin: 1rem 0 0;
    }

    .blog-card .description p:first-of-type {
      margin-top: 1.25rem;
    }

    .blog-card .description p:first-of-type:before {
      content: "";
      position: absolute;
      height: 5px;
      background: #5ad67d;
      width: 35px;
      top: -0.75rem;
      border-radius: 3px;
    }

    .blog-card:hover .details {
      left: 0%;
    }

    @media (min-width: 640px) {
      .blog-card {
        flex-direction: row;
        max-width: 700px;
      }

      .blog-card .meta {
        flex-basis: 40%;
        height: auto;
      }

      .blog-card .description {
        flex-basis: 60%;
        position: relative;
      }

      .blog-card.alt {
        flex-direction: row-reverse;
      }

      .blog-card.alt .description:before {
        transform: skewX(-3deg);
        content: "";
        background: #fff;
        width: 30px;
        position: absolute;
        left: -10px;
        top: 0;
        bottom: 0;
        z-index: -1;
      }

      .blog-card.alt .details {
        padding-left: 25px;
      }
    }
  </style>
</head>
<body>
  <div class="blog-card">
    <div class="meta">
      <div class="photo" style="background-image: url(https://storage.googleapis.com/chydlx/codepen/blog-cards/image-1.jpg)"></div>
      <ul class="details">
       <!--  <li class="author"><a href="#">John Doe</a></li>
        <li class="date">Aug. 24, 2015</li>
        <li class="tags">
         <ul>
            <li><a href="#">Learn</a></li>
            <li><a href="#">Code</a></li>
            <li><a href="#">HTML</a></li>
            <li><a href="#">CSS</a></li>
          </ul>
        </li>
      </ul>-->  
    </div>
    <div class="description">
      <h1>We provide Vehicle Diagnostics</h1>
      <h2>Helps to check the condition of your AutoMoblies</h2>
      <p> Vehicle diagnostics refers to the process of using onboard sensors and computer systems to monitor and assess the health and performance of a vehicle.</p>
      <p class="read-more">
        <a href="#">Read More</a>
      </p>
    </div>
  </div>

  <div class="blog-card alt">
    <div class="meta">
      <div class="photo" style="background-image: url(https://storage.googleapis.com/chydlx/codepen/blog-cards/image-2.jpg)"></div>
      <ul class="details">
      <!-- <li class="author"><a href="#">Jane Doe</a></li>
        <li class="date">July. 15, 2015</li>
        <li class="tags">
          <ul>
            <li><a href="#">Learn</a></li>
            <li><a href="#">Code</a></li>
            <li><a href="#">JavaScript</a></li>
          </ul>
        </li>
      </ul>    --> 
    </div>
    <div class="description">
      <h1>Booking Your Service Date</h1>
      <h2>Managing Your Service Schedule: Appointment Booking Instructions</h2>
      <p>Scheduled maintenance, also known as routine or preventive maintenance, is a planned and regular series of automotive services performed on a vehicle according to the manufacturer's recommendations.</p>
      <p class="read-more">
        <a href="#">Read More</a>
      </p>
    </div>
  </div>
  
  
  
  
  
  

    <div style="text-align: center; margin-top: 20px;">
    <a href="secondhome" style="display: inline-block; padding: 10px 20px; background: red; color: #fff; text-decoration: none; border-radius: 5px;">Back</a>
  </div>
  
  
  
  
  
  
  
  
  
</body>
</html>
