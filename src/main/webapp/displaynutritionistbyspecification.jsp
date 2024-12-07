<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Project</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/teenage_nutritionist.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            height: 100vh;
            color: #333;
        }

        h3 {
            text-align: center;
            color: #333;
            font-family: Arial, sans-serif;
            font-size: 24px;
            margin-top: 20px;
        }

        #myInput {
            width: 80%;
            font-size: 16px;
            padding: 12px 20px;
            margin: 20px auto;
            display: block;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        #myTable {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            font-size: 16px;
            color: #333;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        #myTable th, #myTable td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        #myTable th {
            background-color: black;
            color: white;
            text-transform: uppercase;
        }

        #myTable tr:hover {
            background-color: #f1f1f1;
        }

        #myTable img {
            border-radius: 5px;
        }

        .rejected {
            color: red;
            font-weight: bold;
        }

        .nav-button {
            position: fixed;
            bottom: 20px;
            left: 20px;
            background-color: #6c757d;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .nav-button:hover {
            background-color: #5a6268;
        }

        .home-button {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #6c757d;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .home-button:hover {
            background-color: #5a6268;
        }
    </style>

    

</head>

<body>

<h3 align="center"><u>View Nutritionists by Specification</u></h3>

<br>



<table align="center" border="2" id="myTable">

<tr class="header">
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Experience</th>
    <th>Specification</th>
    <th>Actions</th>
</tr>

<c:forEach items="${nutrilist}" var="product">
<tr>
    <td><c:out value="${product.id}" /></td>
    <td><c:out value="${product.nname}" /></td>
    <td><c:out value="${product.nemail}" /></td>
    <td><c:out value="${product.nexperience}" /></td>
    <td><c:out value="${product.nspecification}" /></td>
    <td>
        <!-- SELECT button redirects to meeting.jsp -->
        <a href='<c:url value="userform"></c:url>'>SELECT</a> | 
        <!-- REJECT button changes the status to rejected -->
        <a href="#" onclick="rejectNutritionist('${product.id}', this)">REJECT</a>
    </td>
</tr>
</c:forEach>

</table>

<button class="nav-button" onclick="window.location.href='viewnutritionistsbypecification'">Back</button>
<button class="home-button" onclick="window.location.href='userhome'">Home</button>

</body>

</html>
