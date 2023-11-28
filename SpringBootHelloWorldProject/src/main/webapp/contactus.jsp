<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            padding: 0;
            margin: 0;
            background-image: url('https://img.freepik.com/free-photo/lights-background_24972-1416.jpg?w=1060&t=st=1693363799~exp=1693364399~hmac=cd0e023203f9ed2d0c7fca055c02c5ed4bfe80093621b4b81824ed03f2f46485');
            background-size: cover;
            background-position: center;
            font-family: "Poppins", sans-serif;
        }

        .title {
            font-size: 50px;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            padding: 20px;
        }

        .container {
            background-color: transparent;
            display: flex;
            justify-content: space-evenly;
            flex-wrap: wrap;
            padding: 20px;
        }

        .container__elem {
            padding: 3%;
            display: flex;
            flex-flow: column nowrap;
            align-items: center;
            flex: 1 1 0px;
        }

        .elem__block {
            height: 190px;
            width: 190px;
            background-image: linear-gradient(to right, #f05a28, #ec008c);
            border-radius: 5%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .elem__block:hover {
            background: linear-gradient(145deg, #ff4000 0, #ff0099 100%);
            transform: scale(1.05);
        }

        .text {
            color: white;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 10px;
        }

        .hover-img {
            width: 75%;
            transition: transform 0.2s ease;
        }

    </style>
</head>
<body>
    <h1 class="title">CONTACT US</h1>
    <div class="container">
        <div class="container__elem">
            <div class="elem__block">
                <a href="call"><img class="hover-img" src="https://i.postimg.cc/XvK00tKD/call.png" alt="Call Us" /></a>
            </div>
            <h2 class="text">CALL US</h2>
        </div>
        <div class="container__elem">
            <div class="elem__block">
                <a href="write"><img class="hover-img" src="https://i.postimg.cc/Fzzt3RM2/write.png" alt="Email Us" /></a>
            </div>
            <h2 class="text">Email us</h2>
        </div>
    </div>
</body>
</html>
