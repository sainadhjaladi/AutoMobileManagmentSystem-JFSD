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
        background-image: url('back8.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        font-family: "Arial", sans-serif;
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    .card {
        background-color: rgba(255, 255, 255, 0.8);
        border: 1px solid #ddd;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        font-family: "Verdana", sans-serif;
        max-width: 95%; /* Increase the maximum width to make the card larger */
        text-align: center;
        margin-left: 9in;
    }

    .card h2 {
        font-weight: bold;
        font-size: 20px;
        color: #333;
        text-transform: uppercase;
    }

    .card p {
        font-size: 18px;
        color: #555;
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
    	
    
        <h2>ID: ${cass.id}</h2>
        
        <img src='displayprofilepic?id=${cass.id}' width="30%" height="30%">
        
        
        <p>Name: ${cass.name}</p>
        <p>Email: ${cass.email}</p>
        <p>Mobile Number: ${cass.number}</p> 
        <a class="button-link" href="viewallcustomers">Back to Previous Page</a>
    </div>
</div>

</body>
</html>
