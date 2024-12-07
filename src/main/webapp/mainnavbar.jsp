<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NutriScout - User Navbar</title>
</head>
<body>
    <header class="navbar">
        <!-- Profile Icon -->
        <div class="profile-icon" onclick="toggleProfile()">
            <img src="images/Profile.jpeg" alt="Profile" id="profile-img">
        </div>
        
        <!-- Dropdown Menu -->
        <div class="profile-dropdown" id="profile-dropdown">
            <p onclick="window.location.href='userprofile';">Profile</p>
            <p onclick="window.location.href='usersettings';">Settings</p>
            <p onclick="window.location.href='home';">Logout</p>
        </div>

        <!-- Logo -->
        <div class="logo">
            <h1>NutriScout</h1>
        </div>
    </header>

    <script>
        // Toggle profile dropdown
        function toggleProfile() {
            const dropdown = document.getElementById('profile-dropdown');
            dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
        }

        // Close the dropdown when clicking outside of it
        window.onclick = function(event) {
            const dropdown = document.getElementById('profile-dropdown');
            if (!event.target.matches('#profile-img') && dropdown.style.display === 'block') {
                dropdown.style.display = 'none';
            }
        }
    </script>
</body>
</html>
