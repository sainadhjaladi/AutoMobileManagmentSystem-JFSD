<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0; 
            padding: 0; 
        }

        .navbar {
            background-color: #333;
            color: #fff;
            padding: 1px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .vehicle {
            border: 1px solid #ccc;
            padding: 20px;
            margin: 10px;
            width: 300px;
            background-color: #f8f8f8;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .vehicle h2 {
            margin: 0;
            font-size: 20px;
        }

        .vehicle p {
            margin: 0;
            margin-top: 10px;
            font-size: 16px;
        }

        .vehicle-review {
            font-size: 14px;
            margin-top: 20px;
        }

        .vehicle-rating {
            color: #FFA500;
        }

        .vehicle-price {
            color: #008000;
        }

        /* Button Styles */
        .learn-more-button {
            background-color: #ffffff;
            color: #ec0505;
            padding: 5px 25px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .learn-more-button:hover {
            background-color: hsl(209, 100%, 50%);
        }
   
    </style>
</head>
<body>
    <div class="navbar">
        <h1>Vehicle Assesment</h1>
    </div>

    <div class="container">
        <div class="vehicle">
            <h2>Kia Sonet</h2>
    <a href="photo1"> <img src="vehicle1.png" alt="Kia Sonet Image" style="max-width: 100%; height: auto;"></a>
            <div class="vehicle-rating">
                Rating:
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9734;</span> 
            </div>
            <p class="vehicle-price">Price: Rs.30,000</p>
            <p class="vehicle-review">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget dui libero.</p>
            <center><a href="book" class="learn-more-button">Book your vehicle</a></center>
        </div>
        

        <div class="vehicle">
            <h2>Nissan Magnite</h2>
          <a href="photo2">  <img src="vehicle2.png" alt="image not found" style="max-width: 100%; height: 60%;"></a>
            <div class="vehicle-rating">
                Rating:
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9734;</span> 
            </div>
            <p class="vehicle-price">Price: Rs.25,000</p>
            <p class "vehicle-review">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
           <center><a href="book" class="learn-more-button">Book your vehicle</a></center>
        </div>

        <div class="vehicle">
            <h2>Mahindra Thar</h2>
            <a href="photo3"><img src="vehicle3.png" alt="image not found" style="max-width: 100%; height: auto;"></a>
            <div class="vehicle-rating">
                Rating:
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9734;</span> 
            </div>
            <p class="vehicle-price">Price: Rs.35,000</p>
            <p class="vehicle-review">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.</p>
             <center><a href="book" class="learn-more-button">Book your vehicle</a></center>
        </div>


        <div class="vehicle">
            <h2>Tata Nexon EV</h2>
            <a href="photo4.html"><img src="vehicle4.png" alt="image not found" style="max-width: 100%; height: auto;"></a>
            <div class="vehicle-rating">
                Rating:
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9734;</span> 
            </div>
            <p class="vehicle-price">Price: Rs.22,000</p>
            <p class="vehicle-review">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.</p>
             <center><a href="book" class="learn-more-button">Book your vehicle</a></center> 
        </div>


        <div class="vehicle">
            <h2>Hyundai Creta</h2>
           <a href="photo5.html" ><img src="vehicle5.png" alt="image not found" style="max-width: 100%; height: auto;"></a>
            <div class="vehicle-rating">
                Rating:
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9734;</span> 
            </div>
            <p class="vehicle-price">Price: Rs.45,000</p>
            <p class="vehicle-review">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.</p>
             <center><a href="book" class="learn-more-button">Book your vehicle</a></center>
        </div>



        <div class="vehicle">
            <h2>MG Gloster</h2>
           <a href="photo6.html"> <img src="vehicle6.png" alt="image not found" style="max-width: 100%; height: auto;"></a>
            <div class="vehicle-rating">
                Rating:
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9734;</span> 
            </div>
            <p class="vehicle-price">Price: Rs.85,000</p>
            <p class="vehicle-review">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.</p>
             <center><a href="book" class="learn-more-button">Book your vehicle</a></center>
        </div>



        <div class="vehicle">
            <h2>Mahindra XUV700</h2>
            <a href="photo7.html"><img src="vehicle7.png" alt="image not found" style="max-width: 100%; height: auto;"></a>
            <div class="vehicle-rating">
                Rating:
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9734;</span> 
            </div>
            <p class="vehicle-price">Price: Rs.85,000</p>
            <p class="vehicle-review">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.</p>
           <center><a href="book" class="learn-more-button">Book your vehicle</a></center>
        </div>



        <div class="vehicle">
            <h2>Hyundai Alcazar</h2>
        <a href="photo8.html">    <img src="vehicle8.png" alt="image not found" style="max-width: 100%; height: auto;"> </a>
            <div class="vehicle-rating">
                Rating:
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9734;</span> 
            </div>
            <p class="vehicle-price">Price: Rs.85,000</p>
            <p class="vehicle-review">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.</p>
             <center><a href="book" class="learn-more-button">Book your vehicle</a></center>
        </div>



        <div class="vehicle">
            <h2>MG Astor</h2>
           <a href="photo9.html"> <img src="vehicle9.png" alt="image not found" style="max-width: 100%; height: auto;"> </a>
            <div class="vehicle-rating">
                Rating:
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9734;</span> 
            </div>
            <p class="vehicle-price">Price: Rs.85,000</p>
            <p class="vehicle-review">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.</p>
             <center><a href="book" class="learn-more-button">Book your vehicle</a></center>
        </div>
    </div>
</body>
</html>