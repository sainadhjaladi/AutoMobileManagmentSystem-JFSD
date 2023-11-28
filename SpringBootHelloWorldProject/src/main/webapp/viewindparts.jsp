<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        background-image: url('back16.jpg'); /* Specify the path to your background image */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        font-family: "Arial", sans-serif; /* Set your desired font-family for the entire page */
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    .card {
        background-color: rgba(255, 255, 255, 0.8); /* Add a semi-transparent white background for the card */
        border: 1px solid #ddd;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        font-family: "Verdana", sans-serif; /* Set your desired font-family for the card content */
        max-width: 90%; /* Set maximum width as needed */
        text-align: center; /* Center align the content within the card */
        margin-right: 9in; /* Move the card 6 inches to the left */
    }

    .card h2 {
        font-weight: bold;
        font-size: 20px; /* Adjust font size as needed */
        color: #333; /* Change text color */
        text-transform: uppercase; /* Change text style (e.g., uppercase) */
    }

    .card p {
        font-size: 18px; /* Adjust font size as needed */
        color: #555; /* Change text color */
    }

    .button-link {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 10px;
        cursor: pointer;
    }
</style>
</head>
<body>

<div class="container">
    <div class="card">
        <h2>ID: ${pok.id}</h2>
        <p>Name: ${pok.name}</p>
        <p>Vehicle Model: ${pok.vehmod}</p>
        <p>Number of Parts: ${pok.np}</p> 
        <p>Payment Method: ${pok.pm}</p> 
    	<p>Services Required: ${pok.sr}</p> 
    	<p>Shipping Address: ${pok.address}</p> 
        
        <a class="button-link" href="viewallparts">Back to Previous Page</a>
    </div>
</div>

</body>
</html>