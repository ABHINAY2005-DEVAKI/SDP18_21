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
        /* Apply background image */
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/teenage_nutritionist.jpg');  /* Ensure the correct image path */
            background-size: cover;  /* Make the image cover the entire screen */
            background-position: center;  /* Center the image */
            background-attachment: fixed;  /* Fix the background while scrolling */
            margin: 0;
            padding: 0;
            height: 100vh;  /* Make the body cover the entire viewport height */
            color: #333;  /* Text color */
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
            background-color: rgba(255, 255, 255, 0.8);  /* Slight transparency for readability */
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

        /* Style for the Back and Home buttons */
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
            right: 20px; /* Adjusted to position at the bottom-right */
            background-color: #6c757d; /* Same as Back button */
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

    <script>
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[4]; // Column 4 for Specification
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }       
            }
        }
    </script>

</head>

<body>

<h3 align="center"><u>View Nutritionists by Specification</u></h3>

<br>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Specification Name">

<table align="center" border="2" id="myTable">

<tr class="header">
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Experience</th>
    <th>Specification</th>
</tr>

<!-- Corrected iteration to display each nutritionist -->
<c:forEach items="${nutrilist}" var="product">
<tr>
    <td><c:out value="${product.id}" /></td>  <!-- Corrected to use product -->
    <td><c:out value="${product.nname}" /></td> <!-- Corrected to use product -->
    <td><c:out value="${product.nemail}" /></td> <!-- Corrected to use product -->
    <td><c:out value="${product.nexperience}" /></td> <!-- Corrected to use product -->
    <td><c:out value="${product.nspecification}" /></td> <!-- Corrected to use product -->
</tr>
</c:forEach>

</table>

<!-- Back and Home buttons -->
<button class="nav-button" onclick="window.location.href='viewnutritionistsbypecification'">Back</button>
<button class="home-button" onclick="window.location.href='userhome'">Home</button>

</body>

</html>
