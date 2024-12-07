<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NutriScout - Dietary Guidelines</title>
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
            justify-content: center;
            align-items: center;
            background-color: #4CAF50;
            padding: 20px;
            color: white;
            position: relative;
        }

        .header-title {
            font-size: 32px;
            font-weight: bold;
        }

        /* Main Section */
        .main-section {
            margin: 40px;
        }

        .main-section h2 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        /* Tabs for Boys and Girls */
        .tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .tab-btn {
            padding: 10px 20px;
            margin: 0 10px;
            border: 2px solid #4CAF50;
            background-color: white;
            color: #4CAF50;
            font-weight: bold;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .tab-btn.active, .tab-btn:hover {
            background-color: #4CAF50;
            color: white;
        }

        /* Data Display */
        .data-display {
            display: none;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }

        .data-display.active {
            display: block;
        }

        .data-display h3 {
            color: #4CAF50;
            margin-bottom: 15px;
        }

        /* Common Section */
        .common-section {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .common-section p {
            margin-bottom: 10px;
        }

        /* Navigation Buttons */
        .nav-buttons {
            display: flex;
            justify-content: space-between;
            margin: 20px;
        }

        .nav-buttons .back-btn, .nav-buttons .submit-btn {
            padding: 10px 20px;
            background-color: #333;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .nav-buttons .back-btn:hover, .nav-buttons .submit-btn:hover {
            background-color: #555;
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
    <!-- Header Section -->
    <header>
        <div class="header-title">NutriScout - Dietary Guidelines</div>
    </header>

    <!-- Main Content Section -->
    <main class="main-section">
        <h2>Children Age Between 2-13</h2>

        

        <!-- Tabs for Boys and Girls -->
        <div class="tabs">
            <button class="tab-btn" id="boys-tab" onclick="showData('boys')">Boys</button>
            <button class="tab-btn" id="girls-tab" onclick="showData('girls')">Girls</button>
        </div>

        <!-- Boys Data -->
        <div class="data-display" id="boys-data">
            <img src="images\boy.png" alt="Boy Image" class="image"> <!-- Replace with actual image URL for boys -->
            <h3>Ages 2 to 4: Daily guidelines for boys</h3>
            <p>Calories: 1,000 to 1,600, depending on growth and activity level</p>
            <p>Protein: 2 to 5 ounces</p>
            <p>Fruits: 1 to 1.5 cups</p>
            <p>Vegetables: 1 to 2 cups</p>
            <p>Grains: 3 to 5 ounces</p>
            <p>Dairy: 2 to 2.5 cups</p>
            <h3>Ages 5 to 8: Daily guidelines for boys</h3>
            <p>Calories: 1,200 to 2,000, depending on growth and activity level</p>
            <p>Protein: 3 to 5.5 ounces</p>
            <p>Fruits: 1 to 2 cups</p>
            <p>Vegetables: 1.5 to 2.5 cups</p>
            <p>Grains: 4 to 6 ounces</p>
            <p>Dairy: 2.5 cups</p>
            <h3>Ages 9 to 13: Daily guidelines for boys</h3>
            <p>Calories: 1,600 to 2,600, depending on growth and activity level</p>
            <p>Protein: 5 to 6.5 ounces</p>
            <p>Fruits: 1.5 to 2 cups</p>
            <p>Vegetables: 2 to 3.5 cups</p>
            <p>Grains: 5 to 9 ounces</p>
            <p>Dairy: 3 cups</p>
        </div>

        <!-- Girls Data -->
        <div class="data-display" id="girls-data">
            <img src="images\girl.jpeg" alt="Girl Image" class="image"> <!-- Replace with actual image URL for girls -->  
            <h3>Ages 2 to 4: Daily guidelines for girls</h3>
            <p>Calories: 1,000 to 1,400, depending on growth and activity level</p>
            <p>Protein: 2 to 4 ounces</p>
            <p>Fruits: 1 to 1.5 cups</p>
            <p>Vegetables: 1 to 1.5 cups</p>
            <p>Grains: 3 to 5 ounces</p>
            <p>Dairy: 2 to 2.5 cups</p>
            <h3>Ages 5 to 8: Daily guidelines for girls</h3>
            <p>Calories: 1,200 to 1,800, depending on growth and activity level</p>
            <p>Protein: 3 to 5 ounces</p>
            <p>Fruits: 1 to 1.5 cups</p>
            <p>Vegetables: 1.5 to 2.5 cups</p>
            <p>Grains: 4 to 6 ounces</p>
            <p>Dairy: 2.5 cups</p>
            <h3>Ages 9 to 13: Daily guidelines for girls</h3>
            <p>Calories: 1,400 to 2,200, depending on growth and activity level</p>
            <p>Protein: 4 to 6 ounces</p>
            <p>Fruits: 1.5 to 2 cups</p>
            <p>Vegetables: 1.5 to 3 cups</p>
            <p>Grains: 5 to 7 ounces</p>
            <p>Dairy: 3 cups</p>
        </div>

        <!-- Common Data Section -->
        <div class="common-section">
            <h3>Nutrition Basics for Kids</h3>
            <p>The best eating pattern for a child's growth and development considers the child's age, activity level, and other characteristics. Check out these nutrition basics for kids, based on the latest Dietary Guidelines for Americans.</p>
            <p>Food packed with nutrients — with no or limited sugar, saturated fat, or salt added to it — is considered nutrient dense. Focusing on nutrient-dense foods helps kids get the nutrients they need while limiting overall calories.</p>
            <h4>Consider these nutrient-dense foods:</h4>
            <p><strong>Protein:</strong> Choose seafood, lean meat and poultry, eggs, beans, peas, soy products, and unsalted nuts and seeds.</p>
            <p><strong>Fruits:</strong> Encourage your child to eat a variety of fresh, canned, frozen, or dried fruits. Look for canned fruit that says it's light or packed in its own juice to avoid added sugar.</p>
            <p><strong>Vegetables:</strong> Serve a variety of fresh, canned, frozen, or dried vegetables. Opt for peas, beans, and colorful veggies weekly, and choose low-sodium canned options.</p>
            <p><strong>Grains:</strong> Choose whole grains like whole-wheat bread, pasta, oatmeal, quinoa, and brown or wild rice.</p>
            <p><strong>Dairy:</strong> Offer fat-free or low-fat dairy products like milk, yogurt, and cheese. Fortified soy beverages also count as dairy.</p>
        </div>

        <!-- Navigation Buttons -->
        <div class="nav-buttons">
            <button class="back-btn" onclick="window.location.href='user_age';">Back</button>
            <button class="submit-btn" onclick="window.location.href='userhome';">Main Page</button>
        </div>

        
    </main>

    <script>
        function showData(section) {
            document.getElementById('boys-data').classList.remove('active');
            document.getElementById('girls-data').classList.remove('active');
            document.getElementById(section + '-data').classList.add('active');

            document.getElementById('boys-tab').classList.remove('active');
            document.getElementById('girls-tab').classList.remove('active');
            document.getElementById(section + '-tab').classList.add('active');
        }
    </script>
</body>
</html>
