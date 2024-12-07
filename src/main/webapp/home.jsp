<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NutriScout</title>
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-image: url('images/home.webp'); /* Replace with your background image URL */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
            line-height: 1.6;
        }

        /* Header */
        header {
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 20px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        .logo h1 {
            font-size: 32px;
            font-weight: bold;
        }

        /* Hamburger Menu */
        .hamburger-menu {
            position: absolute;
            top: 20px;
            right: 20px;
            width: 40px;
            height: 40px;
            background-color: white;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }

        .hamburger-menu div {
            width: 20px;
            height: 3px;
            background-color: black;
            margin: 3px 0;
        }

        /* Dropdown Menu */
        .dropdown {
            display: none;
            position: absolute;
            top: 80px;
            right: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            padding: 10px;
            z-index: 1000;
        }

        .dropdown .menu {
            margin: 10px 0;
            cursor: pointer;
            font-weight: bold;
            padding: 10px;
            background-color: #0062cc;
            color: white;
            border-radius: 5px;
            text-align: center;
        }

        .dropdown .menu:hover {
            background-color: #0056b3;
        }

        .submenu {
            display: none;
            margin-top: 10px;
        }

        .submenu a {
            display: block;
            text-decoration: none;
            color: #333;
            margin: 5px 0;
            padding: 8px 12px;
            background-color: #f4f4f4;
            border-radius: 5px;
            text-align: center;
        }

        .submenu a:hover {
            background-color: #ddd;
        }

        /* Main Content */
        main {
            padding: 20px;
            max-width: 900px;
            margin: 50px auto;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
            border-radius: 10px;
        }

        .intro h2 {
            font-size: 28px;
            color: #333;
            margin-bottom: 10px;
        }

        .features ul {
            list-style-type: disc;
            margin-left: 20px;
            text-align: left;
            display: inline-block;
        }

        footer {
            text-align: center;
            padding: 10px 0;
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <h1>NutriScout</h1>
        </div>
        <div class="hamburger-menu" onclick="toggleDropdown()">
            <div></div>
            <div></div>
            <div></div>
        </div>
        <div class="dropdown" id="dropdown-menu">
            <div class="menu" onclick="toggleSubMenu('user-menu')">User</div>
            <div class="submenu" id="user-menu">
                <a href="userlogin">User Login</a>
                <a href="userreg">User Signup</a>
            </div>
            <div class="menu" onclick="toggleSubMenu('admin-menu')">Admin</div>
            <div class="submenu" id="admin-menu">
                <a href="adminlogin">Admin Login</a>
            </div>
            <div class="menu" onclick="toggleSubMenu('nutrition-menu')">Nutrition</div>
            <div class="submenu" id="nutrition-menu">
                <a href="nulogin">Nutritionist Login</a>
                <a href="nusignup">Nutritionist Signup</a>
            </div>
        </div>
    </header>

    <main>
        <section class="intro">
            <h2>Analyze Dietary Habits and Detect Nutrient Deficiencies</h2>
            <p>
                Our web application is designed to help analyze dietary habits, detect nutrient deficiencies, 
                and offer dietary recommendations, particularly for children and adolescents. 
                The app provides timely interventions and personalized suggestions based on users' nutritional needs, 
                aiming to promote healthier lifestyles.
            </p>
        </section>

        <section class="features">
            <h3>Key Features:</h3>
            <ul>
                <li>Comprehensive dietary habit analysis</li>
                <li>Accurate nutrient deficiency detection</li>
                <li>Personalized dietary recommendations</li>
                <li>Timely interventions for healthy development</li>
            </ul>
        </section>
    </main>


    <script>
        function toggleDropdown() {
            const dropdown = document.getElementById('dropdown-menu');
            dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
        }

        function toggleSubMenu(menuId) {
            const submenu = document.getElementById(menuId);
            submenu.style.display = submenu.style.display === 'block' ? 'none' : 'block';
        }
    </script>
</body>
</html>
