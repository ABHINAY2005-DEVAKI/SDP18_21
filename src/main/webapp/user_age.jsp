<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NutriScout - Age Group Selection</title>
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            color: #333;
            line-height: 1.6;
        }

        /* Header */
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #4CAF50;
            padding: 20px;
            color: white;
            position: relative;
        }

        .logo h1 {
            font-size: 28px;
        }

        /* Welcome Section */
        .welcome-section {
            text-align: center;
            margin-top: 30px;
        }

        .welcome-section h2 {
            font-size: 26px;
            color: #333;
        }

        /* Options Section */
        .options-section {
            display: flex;
            justify-content: space-between; /* Align the cards evenly across */
            flex-wrap: wrap;
            gap: 20px; /* Add space between cards */
            padding: 20px;
        }

        .option-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            flex: 1; /* Allow cards to take up available space */
            max-width: 22%; /* Limit the width to fit 4 in a row */
            text-align: center;
            transition: transform 0.3s ease;
            margin-bottom: 20px; /* Space between rows */
        }

        .option-card:hover {
            transform: translateY(-5px);
        }

        .option-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .option-info {
            padding: 15px;
        }

        .option-info h3 {
            font-size: 18px;
            margin-bottom: 10px;
            color: #333;
        }

        .icon-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .icon-btn:hover {
            background-color: #388E3C;
        }

        /* Navigation Buttons */
        .nav-buttons {
            display: flex;
            justify-content: space-between;
            margin: 20px;
        }

        .nav-buttons .back-btn {
            padding: 10px 20px;
            background-color: #333;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .nav-buttons .back-btn:hover {
            background-color: #555;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 20px;
            background-color: #333;
            color: white;
        }

        /* Signup Link */
        .signup-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
            color: #4CAF50;
            cursor: pointer;
            text-decoration: none;
        }

        .signup-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <h1>NutriScout</h1>
        </div>
    </header>

    <main>
        <section class="welcome-section">
            <h2>Select Your Age Group</h2>
        </section>

        <!-- Age Group Cards Section -->
        <section class="options-section">
            <!-- Age Group 4-12 -->
            <div class="option-card">
                <img src="images/one_twleve.png" alt="4-12 Years">
                <div class="option-info">
                    <h3>4-12 Years</h3>
                    <button class="icon-btn" onclick="window.location.href='user_children';">Select</button>
                </div>
            </div>

            <!-- Age Group 12-20 -->
            <div class="option-card">
                <img src="images/adolocent.png" alt="12-20 Years">
                <div class="option-info">
                    <h3>12-20 Years</h3>
                    <button class="icon-btn" onclick="window.location.href='user_body_12_20';">Select</button>
                </div>
            </div>

            <!-- Age Group 20-45 -->
            <div class="option-card">
                <img src="images/young.jpeg" alt="20-45 Years">
                <div class="option-info">
                    <h3>20-45 Years</h3>
                    <button class="icon-btn" onclick="window.location.href='user_body_20_45';">Select</button>
                </div>
            </div>

            <!-- Age Group 45-100 -->
            <div class="option-card">
                <img src="images/fifty.jpeg" alt="45-100 Years">
                <div class="option-info">
                    <h3>45-100 Years</h3>
                    <button class="icon-btn" onclick="window.location.href='user_body_45_100';">Select</button>
                </div>
            </div>
        </section>

        <!-- Navigation Buttons -->
        <div class="nav-buttons">
            <button class="back-btn" onclick="window.location.href='userhome';">Back</button>
        </div>
    </main>

   
</body>
</html>
