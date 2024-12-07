<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<html>
<head>
    <title>All Nutritionists</title>

    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif; /* Simple, readable font */
            background-image: url('images/adminnutritionists.jpg'); /* Background image related to health and nutrition */
            background-size: cover;
            background-position: center;
            color: #333; /* Dark text for readability */
            line-height: 1.6;
            padding: 20px;
        }

        /* Header */
        header {
            text-align: center;
            background-color: rgba(0, 0, 0, 0.6); /* Transparent black for header */
            color: white;
            padding: 10px;
        }

        header h1 {
            font-size: 2.5em;
            margin: 0;
        }

        /* Table Styling */
        table {
            width: 90%;
            margin: 40px auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.6); /* Light, transparent white for table background */
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        th, td {
            padding: 12px;
            text-align: center;
            font-size: 1.1em;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: rgba(46, 109, 164, 0.6); /* Transparent blue for header */
            color: white;
        }

        tr:nth-child(even) {
            background-color: rgba(244, 244, 244, 0.6); /* Light grey for even rows */
        }

        tr:nth-child(odd) {
            background-color: rgba(255, 255, 255, 0.6); /* White for odd rows */
        }

        /* Table Hover Effect */
        tr:hover {
            background-color: rgba(241, 196, 15, 0.6); /* Highlighted yellow row on hover */
            color: white;
        }

        /* Footer Styling */
        footer {
            text-align: center;
            margin-top: 50px;
            font-size: 1em;
            color: rgba(108, 117, 125, 0.6); /* Light grey for footer text */
        }

        footer a {
            color: #007bff;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>

</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<header>
    <h1>View All Nutritionists</h1>
</header>

<br><br><br>

<table>
    <tr style="font-weight: bold;">
        <td>Id</td>
        <td>Name</td>
        <td>Email</td>
        <td>Age</td>
        <td>Contact</td>
        <td>Specification</td>
        <td>Experience</td>
        <td>Education</td>
        <td>Password</td>
    </tr>

    <c:forEach items="${nutritionistlist}" var="nutritionist">
        <tr>
            <td><c:out value="${nutritionist.id}" /></td>
            <td><c:out value="${nutritionist.nname}" /></td>
            <td><c:out value="${nutritionist.nemail}" /></td>
            <td><c:out value="${nutritionist.nage}" /></td>
            <td><c:out value="${nutritionist.ncontact}" /></td>
            <td><c:out value="${nutritionist.nspecification}" /></td>
            <td><c:out value="${nutritionist.nexperience}" /></td>
            <td><c:out value="${nutritionist.neducation}" /></td>
            <td><c:out value="${nutritionist.npassword}" /></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
