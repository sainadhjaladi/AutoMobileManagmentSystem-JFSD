<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Individual Customer Details</title>
<style>
    body {
        background-image: url('back9.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        font-family: "Arial", sans-serif;
        margin: 0;
        padding: 0;
    }

    .container {
        display: flex;
        justify-content: flex-start; /* Move the content to the left */
        align-items: center;
        min-height: 100vh;
    }

    .card {
        background-color: rgba(255, 255, 255, 0.8);
        border: 1px solid #ddd;
        padding: 30px; /* Increase padding to make the card larger */
        border-radius: 5px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        font-family: "Verdana", sans-serif;
        max-width: 110%; /* Increase max-width to make the card 1/4 times larger */
        text-align: center;
        margin-left: 20px; /* Adjust the distance from the left edge */
    }

    .card h1 {
        font-weight: bold;
        font-size: 25px; /* Increase font size */
        color: #333;
        text-transform: uppercase;
    }

    .card p {
        font-size: 20px; /* Increase font size */
        color: #555;
    }

    .button-link {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 15px 30px; /* Increase padding for the button */
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 18px; /* Increase font size for the button */
        margin: 10px;
        cursor: pointer;
    }
</style>
</head>
<body>
<div class="container">
    <div class="card">
        <h1>ID: ${cok.id}<br></h1>
        <p>First Name: ${cok.firstname}</p>
        <p>Last Name: ${cok.lastname}</p>
        <p>Message: ${cok.message}</p>
        <a class="button-link" href="viewallbookedservices">Back to Previous Page</a>
    </div>
</div>
</body>
</html>
