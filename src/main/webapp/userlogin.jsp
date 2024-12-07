<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - NutriScout</title>
    <style>
/* General Styling */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    background: url('images/userlogin.webp') no-repeat center center fixed; /* Add your image path */
    background-size: cover; /* Ensure the image covers the entire background */
    color: #333;
    line-height: 1.6;
    overflow-x: hidden; /* Prevent horizontal scroll caused by background image */
}

/* Transparent Layer */
body::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.7); /* Add a white overlay with opacity */
    z-index: -1; /* Ensures this layer stays behind content */
}

/* Header */
header {
    background-color: #7baaf7; /* Light blue representing health and balance */
    color: white;
    padding: 20px 0;
    text-align: center;
}

.logo h1 {
    font-size: 32px;
    font-weight: bold;
    letter-spacing: 1px;
}

/* Login Form */
main {
    padding: 40px 20px;
    max-width: 600px;
    margin: 40px auto;
    background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    text-align: center;
}

.login-form h2 {
    font-size: 28px;
    color: #4682b4; /* Medium blue for headings */
    margin-bottom: 20px;
}

.login-form p {
    font-size: 16px;
    margin-bottom: 20px;
    color: #555; /* Subtle gray for body text */
}

.login-form form {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

.login-form label {
    font-size: 16px;
    text-align: left;
    color: #333;
}

.login-form input {
    padding: 10px;
    font-size: 16px;
    border: 1px solid #b0c4de; /* Light steel blue for input borders */
    border-radius: 5px;
}

.login-form input:focus {
    outline: none;
    border-color: #4682b4; /* Highlighting focus with medium blue */
    box-shadow: 0 0 5px rgba(70, 130, 180, 0.5);
}

.submit-btn {
    background-color: #4682b4; /* Medium blue for action buttons */
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 18px;
    margin-top: 10px;
    transition: background-color 0.3s ease;
}

.submit-btn:hover {
    background-color: #5b9bd5; /* Lighter blue for hover state */
}

.back-btn {
    background-color: #b0c4de; /* Soft steel blue for secondary buttons */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    margin-top: 15px;
    transition: background-color 0.3s ease;
}

.back-btn:hover {
    background-color: #c5d8eb; /* Even lighter shade for hover state */
}

/* Signup Link */
.signup-link {
    margin-top: 20px;
    font-size: 16px;
}

.signup-link a {
    color: #4682b4; /* Blue link to match theme */
    text-decoration: none;
    font-weight: bold;
}

.signup-link a:hover {
    text-decoration: underline;
}

/* Footer */
footer {
    text-align: center;
    padding: 10px 0;
    background-color: #7baaf7; /* Matching header color for consistency */
    color: white;
    margin-top: 50px;
}


    </style>
</head>
<body>
    <header>
        <div class="nav-bar">
            <div class="logo">
                <h1>NutriScout</h1>
            </div>
        </div>
    </header>

    <main>
        <section class="login-form">
            <h2>Login</h2>
            <p>Log in to NutriScout to access personalized dietary recommendations and interventions.</p>

            <form method="post" action="checkuserlogin">
            <table>
                <tr>
                    <td><label for="uemail">Enter Email ID</label></td>
                    <td><input type="email" id="uemail" name="uemail" required/></td>
                </tr>
                 <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="upwd" name="upwd" required/></td>
                </tr>
                <tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>

            <button class="back-btn" onclick="window.location.href='/';">Back to Home</button>


            <p class="signup-link">
                Don't have an account? <a href="userreg">Sign up here</a>
            </p>
        </section>
    </main>


</body>
</html>
