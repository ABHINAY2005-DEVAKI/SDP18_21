<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Nutri-User_MeetUp</title>
    <style>
        /* Body Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100%;
            background-image: url('images/general_nutritionist.jpg');
            background-size: cover;
            background-position: center;
            position: relative;
        }

        /* Container for the Form */
        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 30px;
            border-radius: 8px;
            background-color: rgba(255, 255, 255, 0.8);
            margin-top: 100px;
        }

        /* Heading Style */
        h2 {
            text-align: center;
            color: #333;
            font-size: 24px;
        }

        /* Form Group Styling */
        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input,
        .form-group textarea,
        .form-group button {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-group button {
            background-color: #D2B48C;
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 10px;
        }

        .form-group button:hover {
            background-color: #C9A27A;
        }

        /* Input and Textarea Custom Styling */
        .container input[type="text"],
        .container input[type="email"],
        .container input[type="number"],
        .container textarea {
            font-size: 14px;
        }

        /* Button Styling for Back and Main Page */
        .back-btn, .main-page-btn {
            position: absolute;
            padding: 10px 20px;
            background-color: #D2B48C;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }

        /* Positioning of the Back Button */
        .back-btn {
            left: 20px;
            bottom: 20px;
        }

        /* Positioning of the Main Page Button */
        .main-page-btn {
            right: 20px;
            bottom: 20px;
        }

        /* Button Hover Effects */
        .back-btn:hover, .main-page-btn:hover {
            background-color: #C9A27A;
        }
    </style>
</head>
<body>

    <!-- Form for Response Submission -->
    <form action="/submitResponse" method="POST" class="container">
        <!-- Display User Information -->
        <div class="form-group">
            <label>User Name: </label><span>${user.name}</span>
        </div>

        <div class="form-group">
            <label>Query: </label><span>${user.query}</span>
        </div>

        <!-- Response Textarea for Input -->
        <div class="form-group">
            <label>Response: </label>
            <textarea name="response" required></textarea>
        </div>

        <!-- Hidden Input for User ID -->
        <input type="hidden" name="userId" value="${user.id}">

        <!-- Submit Button -->
        <div class="form-group">
            <input type="submit" value="Submit Response">
        </div>
    </form>

    <!-- Navigation Buttons -->
    <button class="back-btn" onclick="window.location.href='/previousPage'">Back</button>
    <button class="main-page-btn" onclick="window.location.href='/mainPage'">Main Page</button>

</body>
</html>
