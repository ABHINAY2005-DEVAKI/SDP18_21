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
    <title>User Profile</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: url('images/nutripic.jpg') no-repeat center center fixed; /* Background image */
            background-size: cover; /* Ensure the image covers the entire screen */
            color: #000000; /* Set text color to black */
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            animation: backgroundAnimation 12s ease infinite;
        }

        @keyframes backgroundAnimation {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        h2 {
            margin-bottom: 20px;
            color: #d4bfbf; /* Warm Neutral Beige color */
            font-size: 34px;
            text-align: center;
            text-shadow: 0 0 8px rgba(212, 191, 191, 0.2);
        }

        .content {
            padding: 20px;
            margin-top: 20px;
            width: 80%;
            max-width: 600px;
            background-color: rgba(235, 207, 184, 0.8); /* Light warm beige background for contrast */
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            color: #000000; /* Set data text color to black */
            font-size: 16px;
            text-align: center;
            border: 2px solid #d4bfbf; /* Warm Neutral Beige border color */
        }

        a {
            text-decoration: none;
            color: #d4bfbf; /* Warm Neutral Beige color for links */
            font-weight: bold;
        }

        a:hover {
            color: #e0cfcf; /* Slightly lighter beige for hover effect */
        }

        /* Button style */
        .button {
            display: inline-block;
            background-color: #d4bfbf; /* Warm Neutral Beige */
            color: #ffffff;
            padding: 12px 25px;
            margin: 10px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            text-align: center;
            border: none;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .button:hover {
            background-color: #e0cfcf; /* Slightly lighter beige for hover effect */
            transform: scale(1.05); /* Slight zoom effect on hover */
        }

        .button:active {
            transform: scale(1); /* Reset scale on click */
        }

        /* Position the 'Back' button at the left bottom corner */
        .back-button {
            position: fixed;
            bottom: 20px;
            left: 20px;
            z-index: 1000;
        }

    </style>
</head>

<body>
    <h2>My Profile</h2>
    <div class="content">
        <p><b>Id:</b> <%= nutri.getId() %></p>   
        <p><b>Name:</b> <%= nutri.getNname() %></p>
        <p><b>Age:</b> <%= nutri.getNage() %></p>
        <p><b>Gender:</b> <%= nutri.getNgender() %></p>
        <p><b>Email:</b> <%= nutri.getNemail() %></p>
        <p><b>Contact:</b> <%= nutri.getNcontact() %></p>
        <p><b>Education:</b> <%= nutri.getNeducation() %></p>
        <p><b>Specification:</b> <%= nutri.getNspecification() %></p>
        <p><b>Experience:</b> <%= nutri.getNexperience() %></p>
    </div>

    <!-- Buttons for Edit Profile and Logout -->
    <div style="text-align: center; margin-top: 20px;">
        <a href="nutrisettings" class="button">Edit Profile</a>
        <a href="/" class="button">Logout</a>
    </div>

    <!-- Back button positioned at the bottom left -->
    <div class="back-button">
        <a href="nuhome" class="button">Back</a>
    </div>
</body>
</html>
