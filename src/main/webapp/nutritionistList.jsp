<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Nutritionist</title>
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
            text-align: center;
            background-color: #4CAF50;
            padding: 20px;
            color: white;
        }

        header h1 {
            font-size: 28px;
        }

        /* Options Section */
        .options-section {
            display: flex;
            justify-content: center;
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
    </style>
</head>
<body>
    <header>
        <h1>Select Your Nutritionist Type</h1>
    </header>

    <!-- Nutritionist Options Section -->
    <section class="options-section">
        <!-- Sports Nutritionist -->
        <div class="option-card">
            <img src="images/sports_nutritionist.png" alt="Sports Nutritionist">
            <div class="option-info">
                <h3>Sports Nutritionist</h3>
                <button class="icon-btn" onclick="window.location.href='sportsNutritionist';">Select</button>
            </div>
        </div>

        <!-- Weight Loss Nutritionist -->
        <div class="option-card">
            <img src="images/weight_loss_nutritionist.png" alt="Weight Loss Nutritionist">
            <div class="option-info">
                <h3>Weight Loss Nutritionist</h3>
                <button class="icon-btn" onclick="window.location.href='weightLossNutritionist';">Select</button>
            </div>
        </div>

        <!-- Teenage Nutritionist -->
        <div class="option-card">
            <img src="images/teenage_nutritionist.png" alt="Teenage Nutritionist">
            <div class="option-info">
                <h3>Teenage Nutritionist</h3>
                <button class="icon-btn" onclick="window.location.href='teenageNutritionist';">Select</button>
            </div>
        </div>

        <!-- General Nutritionist -->
        <div class="option-card">
            <img src="images/general_nutritionist.png" alt="General Nutritionist">
            <div class="option-info">
                <h3>General Nutritionist</h3>
                <button class="icon-btn" onclick="window.location.href='generalNutritionist';">Select</button>
            </div>
        </div>
    </section>
</body>
</html>
