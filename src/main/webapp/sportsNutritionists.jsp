<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sports Nutritionists</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 20px;
        }

        header {
            text-align: center;
            padding: 20px;
            background-color: #4CAF50;
            color: white;
            font-size: 24px;
        }

        .nutritionist-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            margin-top: 20px;
        }

        .nutritionist-card {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            padding: 20px;
            text-align: center;
        }

        .nutritionist-card h3 {
            color: #4CAF50;
            margin-bottom: 10px;
        }

        .nutritionist-card p {
            margin: 5px 0;
            font-size: 14px;
        }

        .nutritionist-card .contact-btn {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
        }

        .nutritionist-card .contact-btn:hover {
            background: #388E3C;
        }
    </style>
</head>
<body>
    <header>Sports Nutritionists</header>

    <div class="nutritionist-container">
        <c:forEach var="nutritionist" items="${nutritionistList}">
         <c:if test="${nutritionist.nspecification == 'sportsnutritionist'}">
            <div class="nutritionist-card">
                <h3>${nutritionist.nname}</h3>
                <p><strong>Age:</strong> ${nutritionist.nage}</p>
                <p><strong>Email:</strong> ${nutritionist.nemail}</p>
                <p><strong>Contact:</strong> ${nutritionist.ncontact}</p>
                <p><strong>Specification:</strong> ${nutritionist.nspecification}</p>
                <p><strong>Experience:</strong> ${nutritionist.nexperience} years</p>
                <p><strong>Education:</strong> ${nutritionist.neducation}</p>
                <a class="contact-btn" href="mailto:${nutritionist.nemail}">Contact</a>
            </div>
            </c:if>
        </c:forEach>
    </div>
</body>
</html>
