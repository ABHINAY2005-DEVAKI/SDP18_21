<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Nutritionist Interaction</title>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100%;
            background-image: url('images/general_nutritionist.jpg'); /* Set your background image here */
            background-size: cover;
            background-position: center;
            position: relative; /* To allow absolute positioning of the buttons */
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 30px;
            border-radius: 8px;
            background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
            margin-top: 100px; /* To center the form vertically */
        }

        h2 {
            text-align: center;
            color: #333;
            font-size: 24px;
        }

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
            background-color: #D2B48C; /* Light brown color */
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 10px;
        }

        .form-group button:hover {
            background-color: #C9A27A; /* Slightly darker brown for hover effect */
        }

        .container input[type="text"],
        .container input[type="email"],
        .container input[type="number"],
        .container textarea {
            font-size: 14px;
        }

        /* Positioning for the Back and Main Page buttons */
        .back-btn, .main-page-btn {
            position: absolute;
            padding: 10px 20px;
            background-color: #D2B48C; /* Light brown color */
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }

        /* Left bottom corner for Back button */
        .back-btn {
            left: 20px;
            bottom: 20px;
        }

        /* Right bottom corner for Main Page button */
        .main-page-btn {
            right: 20px;
            bottom: 20px;
        }

        /* Hover effect for buttons */
        .back-btn:hover, .main-page-btn:hover {
            background-color: #C9A27A; /* Slightly darker brown for hover effect */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Interact with Your Nutritionist</h2>
        <form action="/submitForm" method="POST">
            <div class="form-group">
                <label for="userName">Name:</label>
                <input type="text" id="userName" name="userName" required><br>
            </div>
            
            <div class="form-group">
                <label for="userAge">Age:</label>
                <input type="number" id="userAge" name="userAge" required><br>
            </div>

            <div class="form-group">
                <label for="userEmail">Email:</label>
                <input type="email" id="userEmail" name="userEmail" required><br>
            </div>
            
            <div class="form-group">
                <label for="ubodytype">Body Type:</label>
                <input type="text" id="ubodytype" name="ubodytype" required><br>
            </div>

            <div class="form-group">
                <label for="userQuery">Query:</label>
                <textarea id="userQuery" name="userQuery" required></textarea><br>
            </div>

            <div class="form-group">
                <input type="submit" value="Submit">
            </div>
        </form>
    </div>

    <!-- Back Button -->
<button class="nav-button" onclick="window.location.href='/displayproductsbycategory';">Back</button>

<button class="home-button" onclick="window.location.href='/userhome';">Home</button>


</body>
</html>
