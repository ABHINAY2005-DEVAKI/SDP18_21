<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - NutriScout</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('images/signup.png'); /* Replace with your image path */
            background-size: cover;
            color: #333;
            line-height: 1.6;
            display: flex;
            justify-content: flex-start;
            align-items: center;
            height: 100vh;
            margin: 0;
            position: relative;
        }

        main {
            padding: 40px 20px;
            max-width: 600px;
            margin-left: 50px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
        }

        .signup-form h2 {
            font-size: 28px;
            color: #0062cc;
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
            gap: 15px;
        }

        .signup-form label {
            font-size: 16px;
            text-align: left;
            color: #333;
        }

        .signup-form input, .signup-form select {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
        }

        .signup-form input:focus, .signup-form select:focus {
            outline: none;
            border-color: #007bff;
        }

        table {
            width: 100%;
        }

        table td {
            padding: 10px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .submit-btn {
            background-color: #87CEEB;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #5ba4cf;
        }

        .clear-btn {
            background-color: #FFDAB9;
            color: #333;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .clear-btn:hover {
            background-color: #fbb98e;
        }

        .back-btn {
            position: absolute;
            bottom: 10px;
            left: 10px;
            background-color: #98FB98;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
        }

        .back-btn:hover {
            background-color: #76e576;
        }
    </style>
</head>
<body>
    <main>
        <section class="signup-form">
            <h2>Sign Up</h2>
            <p>Join NutriScout to help analyze dietary habits and detect nutrient deficiencies, particularly in children and adolescents.</p>

            <form method="post" action="insertuser">
                <table>
                    <tr>
                        <td><label for="uname">Enter Name</label></td>
                        <td><input type="text" id="uname" name="uname" required placeholder="Enter your full name"/></td>
                    </tr>
                    <tr>
                        <td><label for="uemail">Enter Email ID</label></td>
                        <td><input type="email" id="uemail" name="uemail" required placeholder="Enter your email"/></td>
                    </tr>
                    <tr>
                        <td><label for="uage">Enter Age</label></td>
                        <td><input type="date" id="uage" name="uage" required placeholder="Enter your age"/></td>
                    </tr>
                    <tr>
                        <td><label>Select Role</label></td>
                        <td>
                            <select id="urole" name="urole" required>
                                <option value="">---select---</option>
                                <option value="child">Child</option>
                                <option value="teenager">Teenager</option>
                                <option value="youth">Youth</option>
                                <option value="aged">Aged</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Select Gender</label></td>
                        <td>
                            <select id="ugender" name="ugender" required>
                                <option value="">---select---</option>
                                <option value="MALE">Male</option>
                                <option value="FEMALE">Female</option>
                                <option value="OTHERS">Others</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="upassword">Enter Password</label></td>
                        <td><input type="password" id="upassword" name="upassword" required placeholder="Create a password"/></td>
                    </tr>
                    <tr>
                        <td><label for="ucontact">Enter Contact</label></td>
                        <td><input type="number" id="ucontact" name="ucontact" required placeholder="Enter Your Contact No"/></td>
                    </tr>
                    <tr>
                        <td><label>Select Body Type</label></td>
                        <td>
                            <select id="ubodytype" name="ubodytype" required>
                                <option value="">---select---</option>
                                <option value="Girl_Athletics">Girl Athletics</option>
                                <option value="Girl_HourGlass">Girl HourGlass</option>
                                <option value="M_Ectomorph">M Ectomorph</option>
                                <!-- Add more options as needed -->
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="button-container">
                                <input type="submit" value="Register" class="submit-btn"/>
                                <input type="reset" value="Clear" class="clear-btn"/>
                            </div>
                        </td>
                    </tr>
                </table>
            </form>
        </section>
    </main>

    <a href="/" class="back-btn">Back</a>
</body>
</html>
