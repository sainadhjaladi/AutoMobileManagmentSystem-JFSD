<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback from Customers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('back5.jpg'); /* Add your image URL here */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            text-decoration: underline;
            color: #fff; /* Set the heading color to white */
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.8); /* Set the background color of the table with some opacity */
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th {
            background-color: rgba(255, 255, 255, 0.8); /* Set the background color of th with some opacity */
            color: #000; /* Set the text color of th to black */
            font-weight: bold;
            padding: 10px; /* Maintain cell size */
        }

        td {
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #ffeeba; /* Light yellow for even rows */
        }

        tr:nth-child(odd) {
            background-color: #f5e0d3; /* Light brown for odd rows */
        }

        a {
            text-decoration: none;
            color: #0077e6;
        }

        a:hover {
            text-decoration: underline;
        }

        .centered {
            text-align: center;
        }
    </style>
</head>
<body>
<br>
<h3 align="center"><u>Feed Back collected from customers</u></h3>

<table align="center" border="2">
    <tr style="color: black; font-weight: bold;">
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Message</th>
    </tr>
    <c:forEach items="${cust}" var="customer">
    
    
        <tr>
            <td><c:out value="${customer.id}" /></td>
            <td><c:out value="${customer.firstname}" /></td>
            <td><c:out value="${customer.lastname}" /></td>
            <td><c:out value="${customer.message}" /></td>
            <td>
                <a href='<c:url value="views?id=${customer.id}"></c:url>' class="view-link">View</a>
                
                
            </td>
        </tr>
    </c:forEach>
</table>

<div style="text-align: center; margin-top: 20px;">
    <a href="addcard">Back to Previous Page</a>
</div>
</body>
</html>
