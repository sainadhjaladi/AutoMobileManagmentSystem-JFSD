<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Booked Services</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('back10.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            text-decoration: underline;
            color: #fff;
            font-size: 24px;
            margin-top: 20px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff;
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
            background-color: #ffeeba;
        }

        tr:nth-child(odd) {
            background-color: #f5e0d3;
        }

        a {
            text-decoration: none;
            color: #0077e6;
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
<h3 align="center"><u>All Booked Services</u></h3>
<table align="center" border="2">
    <tr style="background-color: #0077e6; color: #fff; font-weight: bold;">
        <td>ID</td>
        <td>UserName</td>
        <td>Email Id</td>
        <td>Vehicle Model</td>
        <td>Services Required</td>
        <td>Preferred Service Date</td>
        <td>Preferred Service time</td>
    </tr>
    <c:forEach items="${bos}" var="bo">
        <tr>
            <td><c:out value="${bo.id}" /></td>
            <td><c:out value="${bo.name}" /></td>
            <td><c:out value="${bo.email}" /></td>
            <td><c:out value="${bo.vehiclemodel}" /></td>
            <td><c:out value="${bo.typeofService}" /></td>
            <td><c:out value="${bo.stable}" /></td>
            <td><c:out value="${bo.stime}" /></td>
            <td>
                <a href='<c:url value="view?id=${bo.id}"></c:url>' class="view-link">View</a>
            </td>
        </tr>
    </c:forEach>
</table>
<div style="text-align: center; margin-top: 20px;">
    <a href="addcard" style="color: #0077e6;">Back to Previous Page</a>
</div>
</body>
</html>
