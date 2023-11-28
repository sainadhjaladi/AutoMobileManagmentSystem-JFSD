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
            margin: 0;
            padding: 0;
        }

        /* Style for the video container */
        #video-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            overflow: hidden;
        }

        /* Style for the video itself */
        video {
            object-fit: cover;
            width: 100%;
            height: 100%;
        }

        h3 {
            text-align: center;
            text-decoration: underline;
            color: #fff;
            font-size: 24px;
            margin-top: 20px;
        }

        /* Table CSS to match your previous code */
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
        /* End of table CSS */

        /* Rest of your existing CSS styles... */
    </style>
</head>
<body>

<!-- Video container with the background video -->
<div id="video-container">
    <video autoplay loop muted>
        <source src="back12.mp4" type="video/mp4">
        <!-- Include other video formats for compatibility (WebM, Ogg) -->
    </video>
</div>

<h3>All Booked Services</h3>

<table align="center" border="2">
    <tr style="background-color: #0077e6; color: #fff; font-weight: bold;">
        <td>ID</td>
        <td>Customer Name</td>
        <td>Vehicle Model</td>
        <td>Part Name</td>
        <td>Part Number</td>
        <td>Payment Method</td>
        <td>Servieces required</td>
        <td>Shipping Address</td>
    </tr>
    <c:forEach items="${vpars}" var="vo">
        <tr>
            <td><c:out value="${vo.id}" /></td>
            <td><c:out value="${vo.name}" /></td>
            <td><c:out value="${vo.vehmod}" /></td>
            <td><c:out value="${vo.pname}" /></td>
            <td><c:out value="${vo.np}" /></td>
            <td><c:out value="${vo.pm}" /></td>
            <td><c:out value="${vo.sr}" /></td>
            <td><c:out value="${vo.address}" /></td>
            <td>
                <a href='<c:url value="visit?id=${vo.id}"></c:url>' class="view-link">View</a>
            </td>
        </tr>
    </c:forEach>
</table>

<div style="text-align: center; margin-top: 20px;">
    <a href="addcard" style="color: #0077e6;">Back to Previous Page</a>
</div>

</body>
</html>
