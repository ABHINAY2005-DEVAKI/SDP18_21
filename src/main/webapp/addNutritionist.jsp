<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Nutritionist</title>
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
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }

    main {
        width: 90%; /* Adjusted width for responsiveness */
        max-width: 1200px; /* Maximum width for larger screens */
        display: flex;
        justify-content: center;
        padding: 20px;
    }

    .signup-container {
        display: flex;
        flex-wrap: wrap; /* Allow wrapping for smaller screens */
        align-items: center;
        gap: 20px;
        width: 100%;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }

    /* Signup Form */
    .signup-form {
        flex: 1 1 45%; /* Allow form to take up 45% of container width */
        min-width: 300px; /* Minimum width to prevent shrinking too much */
        text-align: left;
    }

    .signup-form h2 {
        font-size: 24px;
        color: #2c3e50;
        margin-bottom: 20px;
    }

    .signup-form form {
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    .input-container {
        display: flex;
        flex-direction: column; /* Stack labels and inputs for more space */
    }

    .signup-form label {
        font-size: 14px;
        color: #333;
        margin-bottom: 5px;
    }

    .signup-form input, .signup-form select {
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: 100%; /* Full width for better usability */
    }

    .submit-btn, .back-btn {
        padding: 12px 20px;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .submit-btn {
        background-color: #f39c12;
        color: white;
        border: none;
    }

    .back-btn {
        background-color: #34495e;
        color: white;
        border: none;
    }

    /* Image Section */
    .signup-image {
        flex: 1 1 45%; /* Allow image to take up 45% of container width */
        min-width: 300px; /* Minimum width for better visuals */
    }

    .signup-image img {
        width: 100%; /* Scale image to fit container */
        border-radius: 10px;
        object-fit: cover; /* Ensure image looks good in the container */
    }

    @media (max-width: 768px) {
        .signup-container {
            flex-direction: column; /* Stack form and image vertically */
            text-align: center;
        }

        .signup-form, .signup-image {
            flex: 1 1 100%; /* Full width for smaller screens */
        }
    }
</style>

</head>
<body>

    <%@ include file="adminnavbar.jsp" %>
    <main>
        <div class="signup-container">
            <!-- Sign-Up Form Section -->
            <section class="signup-form">
                <h2>Sign Up (Nutritionist)</h2>
                <p>Join NutriScout to help analyze dietary habits and detect nutrient deficiencies, particularly in children and adolescents.</p>

                <form method="post" action="insertnutritionist"> <!-- Form submission -->
                    <div class="input-container">
                        <label for="nname">Enter Name</label>
                        <input type="text" id="nname" name="nname" required placeholder="Nutritionist name" />
                    </div>

                    <div class="input-container">
                        <label for="nemail">Enter Email ID</label>
                        <input type="email" id="nemail" name="nemail" required placeholder="Nutritionist email" />
                    </div>

                    <div class="input-container">
                        <label for="nage">Enter Age</label>
                        <input type="date" id="nage" name="nage" required placeholder="Nutritionist age" />
                    </div>

                    <div class="input-container">
                        <label for="ncontact">Enter Contact</label>
                        <input type="number" id="ncontact" name="ncontact" required placeholder="Nutritionist Contact No" />
                    </div>

                    <div class="input-container">
                        <label for="nspecification">Specification</label>
                        <select id="nspecification" name="nspecification" required>
                            <option value="">---select---</option>
                            <option value="general">General (Overall)</option>
                            <option value="cardiac">Cardiac</option>
                            <option value="sportsnutritionist">Sports Nutritionist</option>
                            <option value="child">Child</option>
                            <option value="aged">Aged</option>
                        </select>
                    </div>

                    <div class="input-container">
                        <label for="nexperience">Enter Experience</label>
                        <input type="text" id="nexperience" name="nexperience" required placeholder="Nutritionist Experience" />
                    </div>

                    <div class="input-container">
                        <label for="neducation">Enter Education</label>
                        <input type="text" id="neducation" name="neducation" required placeholder="Nutritionist Education" />
                    </div>

                    <div class="input-container">
                        <label for="npassword">Enter Password</label>
                        <input type="password" id="npassword" name="npassword" required placeholder="Nutritionist Password" />
                    </div>

                    <div>
                        <input type="submit" value="Register" class="submit-btn" />
                        <input type="reset" value="Clear" class="back-btn" />
                    </div>
                </form>
                <a href="/" class="back-btn">Back</a>
            </section>

            <!-- Image Section -->
            <section class="signup-image">
                <img src="images/nutritionist.jpg" alt="Nutritionist Image" />
            </section>
        </div>
    </main>
</body>
</html>
