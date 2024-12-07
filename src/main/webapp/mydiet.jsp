<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Diet</title>
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8; /* Soft background color */
            color: #333;
            padding: 20px;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        h1 {
            text-align: center;
            color: #28a745; /* Green color for main heading */
            margin-bottom: 20px;
            font-size: 2.5em;
        }

        /* Triangle Layout */
        .triangle-container {
            position: relative;
            width: 400px;
            height: 400px;
            margin: 0 auto;
        }

        /* Button Styling */
        .select-btn {
            position: absolute;
            width: 150px;
            height: 150px;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            border: none;
            border-radius: 50%; /* Circular buttons */
            cursor: pointer;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            transition: transform 0.3s ease;
        }

        .select-btn:hover {
            transform: scale(1.1); /* Button grows slightly on hover */
        }

        /* My Food Button (top of triangle) */
        .my-food {
            background-image: url('images/food.jpg'); /* Add your background image */
            top: 0;
            left: 50%;
            transform: translateX(-50%);
        }

        /* Timers Button (bottom-left of triangle) */
        .timers {
            background-image: url('images/foodTimers.jpeg'); /* Add your background image */
            bottom: 0;
            left: 0;
        }

        /* My Health Status Button (bottom-right of triangle) */
        .health-status {
            background-image: url('images/healthStatus.webp'); /* Add your background image */
            bottom: 0;
            right: 0;
        }

        /* Button Section for Back Button */
        .button-container {
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }

        button.back-btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s ease;
        }

        button.back-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>My Diet</h1>

        <div class="triangle-container">
            <!-- My Food Button -->
            <button class="select-btn my-food" onclick="window.location.href='my_food_age_selection';">My Food</button>

            <!-- Timers Button -->
            <button class="select-btn timers" onclick="window.location.href='mytimers';">Timers</button>

            <!-- My Health Status Button -->
            <button class="select-btn health-status" onclick="window.location.href='my_health_status';">My Health Status</button>
        </div>

        <!-- Back Button Section -->
        <div class="button-container">
            <button class="back-btn" onclick="window.location.href='userhome';">Main Page</button>
        </div>
    </div>

</body>
</html>
