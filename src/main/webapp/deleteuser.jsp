<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete User</title>

    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif; /* Simple, readable font */
            background-image: url('images/adminusers.jpg'); /* Background image related to diet */
            background-size: cover;
            background-position: center;
            color: #333; /* Dark text for readability */
            line-height: 1.6;
            padding: 20px;
        }

        /* Header */
        header {
            text-align: center;
            background-color: rgba(0, 0, 0, 0.6); /* Increased transparency for header */
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
            background-color: rgba(255, 255, 255, 0.6); /* Increased transparency for table background */
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
            background-color: rgba(46, 109, 164, 0.6); /* Increased transparency for header */
            color: white;
        }

        tr:nth-child(even) {
            background-color: rgba(244, 244, 244, 0.6); /* Increased transparency for even rows */
        }

        tr:nth-child(odd) {
            background-color: rgba(255, 255, 255, 0.6); /* Increased transparency for odd rows */
        }

        /* Table Hover Effect */
        tr:hover {
            background-color: rgba(241, 196, 15, 0.6); /* Increased transparency on hover */
            color: white;
        }

        /* Footer Styling */
        footer {
            text-align: center;
            margin-top: 50px;
            font-size: 1em;
            color: rgba(108, 117, 125, 0.6); /* Increased transparency for footer text */
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
    <h1>Delete Employee</h1>
</header>

<h3 style="text-align: center;"><u>Delete Employee</u></h3>

<table>
    <tr style="font-weight: bold;">
        <td>Id</td>
        <td>UserName</td>
        <td>Email</td>
        <td>Password</td>
        <td>Age</td>
        <td>Gender</td>
        <td>Role</td>
        <td>Contact</td>
        <td>Action</td>
    </tr>

    <c:forEach items="${userlist}" var="userlist">
        <tr>
            <td><c:out value="${userlist.id}" /></td>
            <td><c:out value="${userlist.uusername}" /></td>
            <td><c:out value="${userlist.uemail}" /></td>
            <td><c:out value="${userlist.upassword}" /></td>
            <td><c:out value="${userlist.uage}" /></td>
            <td><c:out value="${userlist.ugender}" /></td>
            <td><c:out value="${userlist.urole}" /></td>
            <td><c:out value="${userlist.ucontact}" /></td>
            <td>
                <a href='<c:url value="delete?id=${userlist.id}"></c:url>' style="color: red;">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>


</body>
</html>
