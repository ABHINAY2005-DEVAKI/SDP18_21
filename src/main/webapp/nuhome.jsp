<%@page import="com.nutridiet.project.model.Nutritionist"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
Nutritionist nutri = (Nutritionist) session.getAttribute("nutri");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nutritionist Home</title>
<style>
      * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            color: #333;
            line-height: 1.6;
            background-image: url('images/food-border.jpg'); /* Add your food border image */
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            padding: 20px; /* Add padding to ensure content is inside the borders */
        }

        /* Container styling to avoid content touching the border */
        .content-container {
            background-color: white;
            margin: 0 auto;
            padding: 20px;
            max-width: 1200px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        /* Header */
        header {
            display: flex;
            justify-content: flex-start; /* Align items to the left */
            align-items: center;
            background-color: #0056b3;
            padding: 20px;
            color: white;
            position: relative;
            border-radius: 10px;
        }

        /* Profile Icon */
        .profile-icon {
            margin-right: 20px;
            cursor: pointer;
        }

        .profile-icon img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
        }

      .logo {
            margin-left: auto; /* Push the logo to the far right */
        }

        .logo h1 {
            font-size: 28px;
            text-align: center;
        }

        /* Profile Dropdown */
        .profile-dropdown {
            position: absolute;
            left: 20px;
            top: 70px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 10px;
            display: none;
            text-align: center;
            z-index: 1;
        }

        .profile-dropdown p {
            margin: 10px 0;
            cursor: pointer;
            color: #333;
        }

        .profile-dropdown p:hover {
            color: #0056b3;
        }

        /* Welcome Section */
        .welcome-section {
            text-align: center;
            margin-top: 40px;
        }

        .welcome-section h2 {
            font-size: 24px;
            color: #0056b3;
        }
        
               .icon-btn {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .icon-btn:hover {
            background-color: #218838;
        }
        
               footer {
            text-align: center;
            padding: 20px 0;
            background-color: #0056b3;
            color: white;
            margin-top: 40px;
            border-radius: 10px;
        }

</style>

</head>
<body>


    <div class="content-container">
        <header>
            <div class="profile-icon" onclick="toggleProfile()">
                <img src="images\Profile.jpeg" alt="Profile" id="profile-img">
            </div>
            <div class="logo">
                <h1>NutriScout</h1>
            </div>
            <div class="profile-dropdown" id="profile-dropdown">
                <p onclick="window.location.href='nutriprofile';">Profile</p>
                <p onclick="window.location.href='nutrisettings';">Settings</p>
                <p onclick="window.location.href='/';">Logout</p>
            </div>
        </header>

        <main>
            <section class="welcome-section">
                <h2>Welcome, <%= nutri.getNname()%></h2>
            </section>

             <section class="options-section">
                <!-- Age Selector Field -->
                <div class="option-card" id="age-card">
                    <img src="images\user_age.jpg" >
                    <div class="option-info">
                        <button class="icon-btn" onclick="window.location.href='viewallusersfornutri';">View all Users</button>
                    </div>
                </div>
                
                 </section>

        </main>



        


    <script>
        // Toggle profile dropdown
        function toggleProfile() {
            const dropdown = document.getElementById('profile-dropdown');
            dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
        }


    </script>
    
</body>
</html>