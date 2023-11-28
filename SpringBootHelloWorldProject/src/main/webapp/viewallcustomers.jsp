<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('back11.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            text-decoration: underline;
            color: #fff; /* Set the heading color to white */
            font-size: 24px;
            margin-top: 20px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff; /* Set the background color of the table to white */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 15px;
            text-align: center;
            font-size: 16px;
        }

        th {
            background-color: #0077e6;
            color: #fff;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #ffeeba; /* Light yellow for even rows */
        }

        tr:nth-child(odd) {
            background-color: #f5e0d3; /* Light brown for odd rows */
        }

        a {
            text-decoration: none;
            color: #0077e6; /* Change link color to blue */
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        .centered {
            text-align: center;
        }

        a.view-link {
            color: #000;
        }
    </style>
</head>
<body>
<br>
<h3 align="center" style="color: #000;"><u>All customers</u></h3>
<table align="center" border="2">
    <tr style="background-color: #0077e6; color: #fff; font-weight: bold;">
    	<td>Image</td>
        <td>ID</td>
        <td>UserName</td>
        <td>Email Id</td>
        <td>View</td>
<c:forEach items="${cuscus}" var="cat">
    <tr>
        <td><img src='displayprofilepic?id=${cat.id}' width="20%" height="20%"></td>
    
        <td><c:out value="${cat.id}" /></td>
        <td><c:out value="${cat.name}" /></td>
        <td><c:out value="${cat.email}" /></td>
        <td>
             <a href='<c:url value="view1?id=${cat.id}"></c:url>' class="view-link">View</a>
        </td>
    </tr>
    </c:forEach>
</table>
<div style="text-align: center; margin-top: 20px;">
    <a href="addcard" style="color: #0077e6;">Back to Previous Page</a>
</div>
</body>
</html>
