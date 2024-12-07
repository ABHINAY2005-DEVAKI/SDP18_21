<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Verdana', sans-serif; /* Modern font for better readability */
            background-image: url('images/adminlogin.webp'); /* Background image */
            background-size: cover; /* Ensure the image covers the entire body */
            background-position: center center; /* Center the background image */
            color: #343a40; /* Dark text color */
            line-height: 1.6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            padding: 20px;
        }

        /* Form Container */
        .form-container {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background for the form */
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px; /* Limiting the width of the form */
            text-align: center;
            backdrop-filter: blur(10px); /* Adding blur effect to the background */
            position: relative; /* To position the Back button relative to the form */
        }

        /* Header */
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #28a745; /* Green color for the main heading */
            font-size: 2.5em; /* Increased font size for the main heading */
        }

        /* Section Styling */
        h2 {
            color: #dc3545; /* Red color for section headers */
            margin-top: 20px;
            font-size: 2em; /* Increased font size for section headers */
        }

        h3 {
            color: #007bff; /* Blue color for sub-section headers */
            margin-top: 15px;
            font-size: 1.5em; /* Increased font size for sub-section headers */
        }

        p, ul {
            margin: 10px 0;
            line-height: 1.5;
        }

        /* Buttons */
        .nav-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .nav-buttons button {
            padding: 10px 20px;
            background-color: #007bff; /* Blue color for buttons */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .nav-buttons button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        /* Signup Link */
        .signup-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
            color: #dc3545; /* Red color for signup link */
            cursor: pointer;
            text-decoration: none;
        }

        .signup-link:hover {
            text-decoration: underline;
        }

        /* Form Input Fields */
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        input[type="submit"], input[type="reset"], .back-button {
            width: 48%;
            padding: 12px;
            margin: 10px 5px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
        }

        input[type="reset"] {
            background-color: #ffc107;
        }

        /* Transparent Back Button */
        .back-button {
            background-color: transparent;
            color: #007bff;
            border: 2px solid #007bff;
            padding: 6px 10px; /* Smaller size */
            font-size: 14px; /* Smaller text */
            position: absolute;
            bottom: 10px;
            left: 10px;
        }

        .back-button:hover {
            background-color: #007bff;
            color: white;
        }

        /* Hover effects for buttons */
        input[type="submit"]:hover {
            background-color: #218838;
        }

        input[type="reset"]:hover {
            background-color: #e0a800;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h3><u>Admin Login</u></h3>
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
        <!-- Back Button -->
        <button type="button" class="back-button" onclick="window.location.href='/';">Back</button>
    </div>
</body>
</html>
