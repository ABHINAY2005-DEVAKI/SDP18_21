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
            font-family: 'Verdana', sans-serif;
            background-color: #eaeff1;
            color: #4a4a4a;
            line-height: 1.6;
        }

        /* Header */
        header {
            background-color: #34495e;
            padding: 15px;
            text-align: center;
        }

        header h1 {
            font-size: 32px;
            color: #ecf0f1;
            letter-spacing: 1px;
        }

        /* Welcome Section */
        .welcome-section {
            text-align: center;
            padding: 30px;
        }

        .welcome-section h2 {
            font-size: 28px;
            color: #2c3e50;
        }

        /* Options Section */
        .options-section {
            display: flex;
            justify-content: space-evenly;
            flex-wrap: wrap;
            margin: 40px 0;
        }

        .option-card {
            background-color: #ffffff;
            border: 2px solid #bdc3c7;
            border-radius: 15px;
            width: 23%;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        }

        .option-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .option-card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-bottom: 1px solid #bdc3c7;
        }

        .option-info {
            padding: 20px;
        }

        .option-info h3 {
            font-size: 20px;
            margin-bottom: 15px;
            color: #2c3e50;
        }

        .icon-btn {
            background-color: #1abc9c;
            color: white;
            padding: 10px 25px;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            font-size: 16px;
        }

        .icon-btn:hover {
            background-color: #16a085;
            transform: translateY(-3px);
        }

        /* Navigation Buttons */
        .nav-buttons {
            text-align: center;
            margin: 30px 0;
        }

        .back-btn {
            padding: 12px 30px;
            background-color: #7f8c8d;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 16px;
        }

        .back-btn:hover {
            background-color: #95a5a6;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 20px;
            background-color: #34495e;
            color: #ecf0f1;
        }

        /* Signup Link */
        .signup-link {
            display: block;
            text-align: center;
            margin-top: 30px;
            font-size: 16px;
            color: #e74c3c;
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
            <h1>My Health Status</h1>
        </div>
    </header>

    <main>
        <section class="welcome-section">
            <h2>Select Your Age Group</h2>
        </section>

        <section class="options-section">
            <!-- Age Group 4-12 -->
            <div class="option-card">
                <img src="images\user_age.jpg" alt="4-12 Years">
                <div class="option-info">
                    <h3>4-12 Years</h3>
                    <button class="icon-btn" onclick="window.location.href='my_health_status_list';">Select</button>
                </div>
            </div>

            <!-- Age Group 12-20 -->
            <div class="option-card">
                <img src="images\user_age.jpg" alt="12-20 Years">
                <div class="option-info">
                    <h3>12-20 Years</h3>
                    <button class="icon-btn" onclick="window.location.href='my_health_status_list';">Select</button>
                </div>
            </div>

            <!-- Age Group 20-45 -->
            <div class="option-card">
                <img src="images\user_age.jpg" alt="20-45 Years">
                <div class="option-info">
                    <h3>20-45 Years</h3>
                    <button class="icon-btn" onclick="window.location.href='my_health_status_list';">Select</button>
                </div>
            </div>

            <!-- Age Group 45-100 -->
            <div class="option-card">
                <img src="images\user_age.jpg" alt="45-100 Years">
                <div class="option-info">
                    <h3>45-100 Years</h3>
                    <button class="icon-btn" onclick="window.location.href='my_health_status_list';">Select</button>
                </div>
            </div>
        </section>

        <!-- Navigation Buttons -->
        <div class="nav-buttons">
            <button class="back-btn" onclick="window.location.href='mydiet';">Back</button>
        </div>
    </main>
</body>
</html>
