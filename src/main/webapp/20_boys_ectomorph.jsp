<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Male Ectomorph Diet</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to external CSS file -->
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f8ff;
            color: #333;
            line-height: 1.6;
            padding: 20px;
        }

        /* Header */
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #3a7ca5;
        }

        /* Section Styling */
        h2 {
            color: #2e5984;
            margin-top: 20px;
        }

        p {
            margin: 10px 0;
            line-height: 1.5;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #2e5984;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #3a7ca5;
            color: white;
        }

        /* Buttons */
        .nav-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .nav-buttons button {
            padding: 10px 20px;
            background-color: #3a7ca5;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .nav-buttons button:hover {
            background-color: #2e5984;
        }
    </style>
</head>
<body>
    <h1>Male Ectomorph Diet</h1>

    <!-- Body Description Section -->
    <h2>Body Description</h2>
    <p><strong>Physical Characteristics:</strong> Men with ectomorph bodies are typically lean with long limbs, narrow shoulders, a flat chest, and low body fat. They have a fast metabolism, making it difficult to gain weight or muscle.</p>

    <!-- Food List Section -->
    <h2>Food List</h2>
    <ul>
        <li><strong>Carbohydrates:</strong> Oats, whole-grain pasta, brown rice, and sweet potatoes.</li>
        <li><strong>Proteins:</strong> Lean meats (chicken, turkey), eggs, tofu, and Greek yogurt.</li>
        <li><strong>Healthy Fats:</strong> Avocado, nuts, olive oil.</li>
        <li><strong>Fruits & Vegetables:</strong> High-nutrient, high-calorie options like bananas, berries, spinach, and broccoli.</li>
    </ul>

    <!-- 7-Day Diet Plan Section -->
    <h2>7-Day Diet Plan</h2>
    <table>
        <tr>
            <th>Day</th>
            <th>Breakfast</th>
            <th>Lunch</th>
            <th>Snack</th>
            <th>Dinner</th>
        </tr>
        <tr>
            <td>Monday</td>
            <td>Oatmeal with nuts and berries</td>
            <td>Grilled chicken with quinoa</td>
            <td>Greek yogurt with almonds</td>
            <td>Salmon with sweet potato</td>
        </tr>
        <tr>
            <td>Tuesday</td>
            <td>Eggs and avocado toast</td>
            <td>Turkey sandwich with veggies</td>
            <td>Cottage cheese and fruit</td>
            <td>Beef stir-fry with rice</td>
        </tr>
        <tr>
            <td>Wednesday</td>
            <td>Smoothie with spinach and banana</td>
            <td>Chicken with pasta and veggies</td>
            <td>Hummus and carrots</td>
            <td>Grilled fish with roasted veggies</td>
        </tr>
        <tr>
            <td>Thursday</td>
            <td>Omelette with veggies</td>
            <td>Lentil salad with greens</td>
            <td>Protein bar</td>
            <td>Stir-fried tofu with rice</td>
        </tr>
        <tr>
            <td>Friday</td>
            <td>Pancakes with fruit</td>
            <td>Chicken Caesar wrap</td>
            <td>Mixed nuts</td>
            <td>Shrimp with quinoa</td>
        </tr>
        <tr>
            <td>Saturday</td>
            <td>Greek yogurt with granola</td>
            <td>Beef bowl with veggies</td>
            <td>Nut butter on toast</td>
            <td>Grilled chicken and potatoes</td>
        </tr>
        <tr>
            <td>Sunday</td>
            <td>Whole wheat toast with eggs</td>
            <td>Tuna salad with greens</td>
            <td>Trail mix</td>
            <td>Baked salmon with broccoli</td>
        </tr>
    </table>

    <!-- Advantages Section -->
    <h2>Advantages</h2>
    <p>Low body fat and fast metabolism, maintaining a lean look with minimal cardio.</p>

    <!-- Disadvantages Section -->
    <h2>Disadvantages</h2>
    <p>Hard to gain muscle mass; needs more calories and protein than other types.</p>

    <!-- Recommendations Section -->
    <h2>Recommendations</h2>
    <ul>
        <li>Focus on resistance training, especially compound lifts.</li>
        <li>Avoid excessive cardio.</li>
        <li>Eat calorie-dense meals with high protein and moderate healthy fats.</li>
    </ul>

    <!-- Navigation Buttons -->
    <div class="nav-buttons">
        <button onclick="window.location.href='user_body_20_45';">Back</button>
        <button onclick="window.location.href='userhome';">Main Page</button>
    </div>
</body>
</html>
