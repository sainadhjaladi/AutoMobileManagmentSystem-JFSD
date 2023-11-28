<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>List of Vehicles</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://wallpapers.com/images/hd/race-concept-car-art-th3w4l09g6182zp3.jpg');
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            height: 100vh;
            margin: 0;
        }
        .heading {
            text-align: center;
            margin-top: 20px;
            font-size: 24px;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }
        .card {
            width: 300px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 20px;
            text-align: center;
        }
        .card h2 {
            margin-top: 0;
        }
        .card p {
            margin: 8px 0;
        }
        .add-vehicle-button {
            display: block;
            width: 150px;
            text-align: center;
            margin: 20px auto;
            padding: 10px;
            background-color: #4285F4; /* Change color as needed */
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        .add-vehicle-button:hover {
            background-color: #3367D6; /* Change color on hover as needed */
        }
    </style>
</head>
<body>
    <h1 class="heading">Your Bookings</h1>

    <div class="container">
        <c:forEach items="${book}" var="b">
            <div class="card">
                <h2>${b.name}</h2>
                <p><strong>ID:</strong> ${b.id}</p>
                <p><strong>Vehicle Color:</strong> ${b.vehiclecolor}</p>
                <p><strong>Delivery Address:</strong> ${b.deliveryaddress}</p>
                <p><strong>Quantity:</strong> ${b.quantity}</p>
                <p><strong>Payment Type:</strong> ${b.paymenttype}</p>
            </div>
        </c:forEach>
    </div>
    
    <!-- Add a link to create a new vehicle -->
    <a href="secondhome" class="add-vehicle-button">Back</a>
</body>
</html>
