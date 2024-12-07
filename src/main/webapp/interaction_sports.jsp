<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User-Nutritionist Selection</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-image: url('images/interaction.jpg'); /* Background image */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
            position: relative;
            overflow: hidden;
        }

        /* Overlay for background image */
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(255, 255, 255, 0.5); /* Light overlay */
            z-index: -1;
        }

        h3 {
            text-align: center;
        }

        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.8); /* White background for table */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #f4f4f4;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .rejected {
            background-color: #ffcccc;
        }

        a {
            text-decoration: none;
            color: #007BFF;
        }

        a:hover {
            text-decoration: underline;
        }

        .reject-message {
            color: red;
            font-weight: bold;
            margin-left: 10px;
            display: inline-block;
        }

        /* Styling for the action buttons at the bottom */
        .bottom-buttons {
            position: fixed;
            left: 20px;
            bottom: 20px;
            width: 90%;
            display: flex;
            justify-content: space-between;
        }

        .btn {
            padding: 12px 30px;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s ease;
        }

        .back-btn {
            background-color: #8e9aaf;
        }

        .back-btn:hover {
            background-color: #7b899a;
        }

        .main-page-btn {
            background-color: #6d7885;
        }

        .main-page-btn:hover {
            background-color: #5a6572;
        }

        /* Context Section */
        .context {
            text-align: center;
            margin-top: 30px;
            font-size: 1.1em;
            color: #333;
        }

    </style>
    <script>
        function showRejectMessage(element) {
            var message = document.createElement('span');
            message.classList.add('reject-message');
            message.innerText = "This nutritionist has been rejected by you.";
            element.parentElement.appendChild(message);
            element.setAttribute('disabled', 'true');
        }
    </script>
</head>
<body>
    <h3><u>User-Nutritionist Selection</u></h3>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Specification</th>
                <th>Experience</th>
                <th>Education</th>
                <th>Interest</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${nutritionistlist}" var="nutri">
                <tr class="${nutri.status == 'Rejected' ? 'rejected' : ''}">
                    <td><c:out value="${nutri.id}"/></td>
                    <td><c:out value="${nutri.nname}"/></td>
                    <td><c:out value="${nutri.ngender}"/></td>
                    <td><c:out value="${nutri.nspecification}"/></td>
                    <td><c:out value="${nutri.nexperience}"/></td>
                    <td><c:out value="${nutri.neducation}"/></td>
                    <td><c:out value="${nutri.status}"/></td>
                    <td>
                        <a href='<c:url value="interaction_sports_up?id=${nutri.id}&status=Accepted"></c:url>'>SELECT</a> |
                        <a href="javascript:void(0);" onclick="showRejectMessage(this)">REJECT</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>



    <!-- Bottom Buttons -->
    <div class="bottom-buttons">
        <button class="btn back-btn" onclick="window.location.href='viewnutritionistsbypecification.jsp';">Back</button>
        <button class="btn main-page-btn" onclick="window.location.href='userhome.jsp';">Main Page</button>
    </div>

</body>
</html>
