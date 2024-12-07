<%@page import="com.nutridiet.project.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
User user = (User) session.getAttribute("user");
%>
<%-- <%
User user = (User) session.getAttribute("user");

if(user==null)
{
	response.sendRedirect("empsessionexpiry");
	return;
}

%> --%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NutriScout - Select Options</title>
    <style>
        /* General Styling */
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

        /* AI Icon */
        .ai-icon {
            margin-left: 20px;
            cursor: pointer;
        }

        .ai-icon img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
        }

        /* Logo */
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

        /* Options Section */
        .options-section {
            display: flex;
            justify-content: space-around;
            margin: 40px 0;
        }

        .option-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 45%;
            text-align: center;
            transition: transform 0.3s ease;
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
            padding: 20px;
        }

        .option-info h3 {
            font-size: 20px;
            margin-bottom: 15px;
            color: #333;
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

        /* AI Chat Section */
        .chat-window {
            position: fixed;
            bottom: 20px;
            left: 20px; /* Position on the bottom left */
            width: 300px;
            height: 400px;
            background-color: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            display: none;
            flex-direction: column;
            z-index: 1000;
        }

        .chat-header {
            background-color: #0056b3;
            color: white;
            padding: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            text-align: center;
        }

        .chat-log {
            padding: 10px;
            flex: 1;
            overflow-y: auto;
            border: 1px solid #ccc;
            margin: 10px;
            border-radius: 5px;
        }

        .chat-input {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin: 10px;
        }

        .send-btn {
            background-color: #0056b3;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin: 10px;
        }

        .send-btn:hover {
            background-color: #004494;
        }

        /* Footer */
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
            <div class="ai-icon" onclick="toggleChat()">
                <img src="images\chatbot.png" alt="AI Chat">
            </div>
            <div class="logo">
                <h1>NutriScout</h1>
            </div>
            <div class="profile-dropdown" id="profile-dropdown">
                <p onclick="window.location.href='userprofile';">Profile</p>
                <p onclick="window.location.href='usersettings';">Settings</p>
                <p onclick="window.location.href='/';">Logout</p>
            </div>
        </header>

        <main>
            <section class="welcome-section">
                <h2>Welcome, <%= user.getUusername()%></h2>
            </section>

            <section class="options-section">
                <!-- Age Selector Field -->
                <div class="option-card" id="age-card">
                    <img src="images\user_age.jpg" alt="Select Age">
                    <div class="option-info">
                        <button class="icon-btn" onclick="window.location.href='user_age';">Select the age here</button>
                    </div>
                </div>

                <!-- My Diet Field -->
                <div class="option-card" id="diet-card">
                    <img src="images\diet.jpeg" alt="About My Diet">
                    <div class="option-info">
                        <h3>About My Diet</h3>
                        <button class="icon-btn" onclick="window.location.href='mydiet';">Go</button>
                    </div>
                </div>
                
                <!-- My Diet Field -->
                <div class="option-card" id="diet-card">
                    <img src="images\nutritionist1.jpg" alt="select Dietitian">
                    <div class="option-info">
                        <h3>Select Nutritionist</h3>
                        <button class="icon-btn" onclick="window.location.href='viewnutritionistsbypecification';">Go</button>
                    </div>
                </div>
                
                
                
            </section>
        </main>

        <!-- AI Chat Window -->
        <div class="chat-window" id="chat-window">
            <div class="chat-header">
                <h3>Chat with AI</h3>
            </div>
            <div class="chat-log" id="chat-log"></div>
            <input type="text" class="chat-input" id="chat-input" placeholder="Ask me anything about your diet...">
            <button class="send-btn" onclick="sendMessage()">Send</button>
        </div>

        
    </div>

    <script>
        // Toggle profile dropdown
        function toggleProfile() {
            const dropdown = document.getElementById('profile-dropdown');
            dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
        }

        // Toggle chat window
        function toggleChat() {
            const chatWindow = document.getElementById('chat-window');
            chatWindow.style.display = chatWindow.style.display === 'flex' ? 'none' : 'flex';
        }

        // Send message to chat
        function sendMessage() {
            const input = document.getElementById('chat-input');
            const chatLog = document.getElementById('chat-log');
            const userMessage = input.value.trim();

            if (userMessage) {
                // Display user message
                chatLog.innerHTML += `<p><strong>You:</strong> ${userMessage}</p>`;
                input.value = '';

                // Simulate AI response (replace with actual AI integration)
                setTimeout(() => {
                    const aiResponse = `AI: Based on your question "${userMessage}", here are some recommendations...`;
                    chatLog.innerHTML += `<p><strong>${aiResponse}</strong></p>`;
                    chatLog.scrollTop = chatLog.scrollHeight; // Scroll to bottom
                }, 1000);
            }
        }
    </script>
</body>
</html>
