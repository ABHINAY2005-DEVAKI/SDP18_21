<!DOCTYPE html>
<html>
<head>
    <title>Admin Navbar</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        /* Navbar Container (Bottom Bar) */
        .navbar {
            display: flex;
            justify-content: space-around;
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 80px;
            background-color: #888888; /* Soft Grey Background for Navbar */
            padding: 10px 0;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }

        /* Button Container */
        .button-container {
            display: flex;
            justify-content: space-around;
            width: 100%;
        }

        /* Button Styling */
        .navbar-button {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100px;
            height: 60px;
            background-color: transparent; /* Transparent background */
            color: #2c2f33; /* Dark Text */
            border: 2px solid #2c2f33; /* Border color */
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s, box-shadow 0.3s;
            text-decoration: none;
        }

        /* Button Hover Effect */
        .navbar-button:hover {
            background-color: #b0b0b0; /* Darker grey for hover effect */
            color: #ffffff; /* Change text color to white */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* Button Clicked Effect */
        .navbar-button.clicked {
            background-color: #8a8a8a; /* Even darker grey for clicked state */
            color: #ffffff; /* Change text color to white */
        }

        /* Main Content Adjustments */
        .content {
            padding: 20px;
            margin-bottom: 100px; /* Leaves space for the navbar */
        }

        /* Page Header */
        h2 {
            text-align: center;
            color: #4f5359;
            margin-top: 20px;
        }

    </style>
</head>
<body>
    <h2 align="center">NutriScout</h2>
    <div class="navbar">
        <div class="button-container">
            <a href="adminhome" class="navbar-button" id="home-btn">Home</a>
            <a href="viewallusers" class="navbar-button" id="view-users-btn">View All User</a>
                        <a href="viewallNutritionists" class="navbar-button" id="view-users-btn">View All Nutritionists</a>
            <a href="deleteuser" class="navbar-button" id="delete-user-btn">Delete User</a>
            <a href="adduser" class="navbar-button" id="add-user-btn">Add User</a>
            <a href="addNutritionist" class="navbar-button" id="add-user-btn">Add Nutritionist</a>
            <a href="viewbybodytype" class="navbar-button" id="view-bodytype-btn">View by Body Type</a>
            <!-- Logout Button -->
            <a href="adminlogin" class="navbar-button" id="logout-btn">Logout</a>
        </div>
    </div>

    <script>
        // Add a click event listener to each button to change its state
        document.querySelectorAll('.navbar-button').forEach(button => {
            button.addEventListener('click', function() {
                // Remove 'clicked' class from all buttons
                document.querySelectorAll('.navbar-button').forEach(btn => btn.classList.remove('clicked'));

                // Add 'clicked' class to the clicked button
                this.classList.add('clicked');
            });
        });
    </script>
</body>
</html>
