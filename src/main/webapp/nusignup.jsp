<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up(Nutritionist) - NutriScout</title>
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            color: #333;
            line-height: 1.6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('images/nutritionist.jpg'); 
            background-position: right;
            background-repeat: no-repeat;
            background-size: cover;
        }

        /* Header */
        header {
            background-color: #7f8c8d; /* Neutral color */
            color: white;
            padding: 20px 0;
            text-align: center;
            width: 100%;
        }

        .logo h1 {
            font-size: 32px;
            font-weight: bold;
        }

        /* Main container */
        main {
            width: 100%;
            display: flex;
            justify-content: center;
            padding: 20px;
            margin-top: 50px;
        }

        .signup-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-direction: row;
            width: 70%;
            max-width: 700px;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        /* Signup Form */
        .signup-form {
            width: 100%; /* Full width for the form */
            text-align: left;
        }

        .signup-form h2 {
            font-size: 24px;
            color: #2c3e50; /* Dark gray */
            margin-bottom: 20px;
        }

        .signup-form p {
            font-size: 16px;
            margin-bottom: 20px;
            color: #555;
        }

        .signup-form form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .input-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 10px;
        }

        .signup-form label {
            font-size: 16px;
            color: #333;
            width: 30%; /* Take up 30% width */
        }

        .signup-form input, .signup-form select {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 65%; /* Take up 65% width */
        }

        .signup-form input:focus, .signup-form select:focus {
            outline: none;
            border-color: #95a5a6; /* Light gray focus border */
        }

        .submit-btn {
            background-color: #f39c12; /* Amber color */
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
            background-color: #e67e22; /* Darker amber */
        }

        .back-btn {
            background-color: #34495e; /* Slate gray */
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
            background-color: #2c3e50; /* Darker slate gray */
        }

        /* Image Styling */
        .signup-image {
            width: 50%; /* Adjust the image width */
            height: auto;
        }

        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #7f8c8d;
            color: white;
            margin-top: 50px;
        }

    </style>
</head>
<body>

    <main>
        <div class="signup-container">
            <section class="signup-form">
                <h2>Sign Up (Nutritionist)</h2>
                <p>Join NutriScout to help analyze dietary habits and detect nutrient deficiencies, particularly in children and adolescents.</p>

                <form method="post" action="insertnutritionist"> <!-- Form submission -->
                    <div class="input-container">
                        <label for="nname">Enter Name</label>
                        <input type="text" id="nname" name="nname" required placeholder="Nutritionist name"/>
                    </div>

                    <div class="input-container">
                        <label for="nemail">Enter Email ID</label>
                        <input type="email" id="nemail" name="nemail" required placeholder="Nutritionist email"/>
                    </div>

                    <div class="input-container">
                        <label for="nage">Enter Age</label>
                        <input type="date" id="nage" name="nage" required placeholder="Nutritionist age"/>
                    </div>
                    
                    <div class="input-container">
                        <label for="ngender">Select Gender</label>
                        <select id="ngender" name="ngender" required>
                            <option value="">---select---</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Others">Others</option>
                        </select>
                    </div>

                    <div class="input-container">
                        <label for="ncontact">Enter Contact</label>
                        <input type="number" id="ncontact" name="ncontact" required placeholder="Nutritionist Contact No"/>
                    </div>

                    <div class="input-container">
                        <label for="nspecification">Specification</label>
                        <select id="nspecification" name="nspecification" required>
                            <option value="">---select---</option>
                            <option value="general">General</option>
                            <option value="cardiac">Cardiac</option>
                            <option value="sportsnutritionist">Sports Nutritionist</option>
                            <option value="child">Child</option>
                            <option value="aged">Aged</option>
                        </select>
                    </div>

                    <div class="input-container">
                        <label for="nexperience">Enter Experience</label>
                        <input type="text" id="nexperience" name="nexperience" required placeholder="Nutritionist Experience"/>
                    </div>

                    <div class="input-container">
                        <label for="neducation">Enter Education</label>
                        <input type="text" id="neducation" name="neducation" required placeholder="Nutritionist Education"/>
                    </div>

                    <div class="input-container">
                        <label for="npassword">Enter Password</label>
                        <input type="password" id="npassword" name="npassword" required placeholder="Nutritionist Password"/>
                    </div>

                    <div class="button-container">
                        <input type="submit" value="Register" class="submit-btn"/>
                        <input type="reset" value="Clear" class="back-btn"/>
                    </div>
                </form>

                <a href="/" class="back-btn">Back</a>
            </section>

            <section class="signup-image">
                <img src="images/nutritionist.jpg" alt="Nutritionist Image" style="width: 100%; border-radius: 10px;">
            </section>
        </div>
    </main>
</body>
</html>
