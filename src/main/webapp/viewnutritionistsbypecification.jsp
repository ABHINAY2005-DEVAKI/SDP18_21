<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

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
            background-image: url('images/weight_loss_nutritionist.jpg');  /* Ensure correct image path */
            background-size: cover;  /* Make sure the image covers the entire page */
            background-position: center;  /* Center the image */
            background-attachment: fixed;  /* Optional: keeps the background fixed while scrolling */
            margin: 0;
            padding: 0;
            height: 100vh;  /* Ensure body height covers the entire viewport */
        }

        h3 {
            text-align: center;
            color: #444;
            font-size: 24px;
            margin-top: 20px;
        }

        .form-container {
            width: 50%;
            margin: auto;
            background-color: rgba(255, 255, 255, 0.8);  /* Add slight transparency for readability */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-container table {
            width: 100%;
            margin-bottom: 20px;
        }

        .form-container label {
            font-size: 16px;
            color: #444;
        }

        .form-container select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            color: #444;
        }

        .form-container input[type="submit"] {
            background-color: #6c757d;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .form-container input[type="submit"]:hover {
            background-color: #5a6268;
        }

        #myTable {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            font-size: 16px;
            color: #444;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        #myTable th, #myTable td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        #myTable th {
            background-color: #333;
            color: white;
            text-transform: uppercase;
        }

        #myTable tr:hover {
            background-color: #f1f1f1;
        }

        #myTable img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
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

        /* Style for the Back button */
        .back-button {
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

        .back-button:hover {
            background-color: #5a6268;
        }
    </style>
</head>

<body>

    <h3><u>View Nutritionists by Specification</u></h3>

    <br>

    <form action="displayproductsbycategory" method="post" class="form-container">
        <table align="center">
            <tr>
                <td><label for="nspecification">Specification</label></td>
                <td>
                    <select name="nspecification" id="nspecification" required="required">
                        <option value="">---Select---</option>
                        <option value="general">General</option>
                        <option value="sportsnutritionist">Sports Nutritionist</option>
                        <option value="cardiac">Cardiac</option>
                        <option value="child">Child</option>
                        <option value="aged">Aged</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="View" class="button">
                </td>
            </tr>
        </table>
    </form>

    <br><br>

    <!-- Table to display the list of nutritionists based on the selected specification -->
    <c:if test="${not empty nutritionists}">
        <table id="myTable">
            <thead>
                <tr>
                    <th>Nutritionist Name</th>
                    <th>Specialization</th>
                    <th>Location</th>
                    <th>Contact</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="nutritionist" items="${nutritionists}">
                    <tr>
                        <td>${nutritionist.name}</td>
                        <td>${nutritionist.specification}</td>
                        <td>${nutritionist.location}</td>
                        <td>${nutritionist.contact}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <!-- Back button -->
    <button class="back-button" onclick="window.location.href='userhome'">Back</button>

</body>

</html>
