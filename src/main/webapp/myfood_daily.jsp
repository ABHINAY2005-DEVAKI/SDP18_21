<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NutriScout - My Daily Food Routine</title>
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8;
            color: #333;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        h1 {
            color: #28a745;
            font-size: 2.5em;
            text-align: center;
            margin-bottom: 10px;
        }

        h2 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }

        /* Table Styling */
        .tables-container {
            display: flex;
            justify-content: space-between;
            width: 90%;
            margin-bottom: 30px;
        }

        table {
            width: 45%;
            border-collapse: collapse;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
            font-size: 1.2em;
        }

        td {
            font-size: 1em;
        }

        /* Input Field within Table */
        input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1em;
        }

        /* Button Section */
        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-bottom: 20px;
        }

        button {
            padding: 12px 25px;
            font-size: 1.2em;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #218838;
        }

        button.back-btn {
            background-color: #007bff;
        }

        button.back-btn:hover {
            background-color: #0056b3;
        }

        /* Signup Link */
        .signup-link {
            text-align: center;
            margin-top: 10px;
            font-size: 1.2em;
            color: #dc3545;
            cursor: pointer;
            text-decoration: none;
        }

        .signup-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Title -->
    <h1>NutriScout</h1>

    <!-- Daily Food Routine Heading -->
    <h2>My Daily Food Routine</h2>

    <!-- Tables Section -->
    <div class="tables-container">
        <!-- Table 1: Food Items Taken Till Yesterday -->
        <table>
            <thead>
                <tr>
                    <th>Food Item (Yesterday)</th>
                    <th>Time</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Breakfast - Oatmeal</td>
                    <td>8:00 AM</td>
                </tr>
                <tr>
                    <td>Lunch - Grilled Chicken</td>
                    <td>1:00 PM</td>
                </tr>
                <tr>
                    <td>Dinner - Pasta</td>
                    <td>7:00 PM</td>
                </tr>
            </tbody>
        </table>

        <!-- Table 2: Food Items Taken/To Take Today with Input Fields -->
        <table>
            <thead>
                <tr>
                    <th>Time</th>
                    <th>Food Item (Today)</th>
                    <th>Your Planned Meal</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>8:00 AM</td>
                    <td>Breakfast - Smoothie</td>
                    <td><input type="text" placeholder="Enter your breakfast"></td>
                </tr>
                <tr>
                    <td>1:00 PM</td>
                    <td>Lunch - Salad</td>
                    <td><input type="text" placeholder="Enter your lunch"></td>
                </tr>
                <tr>
                    <td>7:00 PM</td>
                    <td>Dinner - Grilled Fish</td>
                    <td><input type="text" placeholder="Enter your dinner"></td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- Button Section -->
    <div class="button-container">
        <!-- Submit Button -->
        <button type="button" onclick="window.location.href='userhome';">Main Page</button>

        <!-- Back Button -->
        <button type="button" class="back-btn" onclick="window.location.href='my_food_age_selection';">Back</button>
    </div>

</body>
</html>
