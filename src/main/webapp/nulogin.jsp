<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login(Nutritionist) - NutriScout</title>
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('images/nutritionist.jpg'); /* Background image */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        /* Container for the form and the image */
        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            max-width: 1000px;
            width: 100%;
            padding: 20px;
        }

        /* Login Form */
        main {
            padding: 40px 20px;
            max-width: 500px;
            margin: 40px auto;
            background-color: white;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
            flex: 1;
        }

        .login-form h2 {
            font-size: 28px;
            color: #555;
            margin-bottom: 20px;
        }

        .login-form p {
            font-size: 16px;
            margin-bottom: 20px;
            color: #555;
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
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-form input:focus {
            outline: none;
            border-color: #666;
        }

        .submit-btn {
            background-color: #6c757d;
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
            background-color: #5a6268;
        }

        .back-btn {
            background-color: #adb5bd;
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
            background-color: #868e96;
        }

        /* Signup Link */
        .signup-link {
            margin-top: 20px;
            font-size: 16px;
        }

        .signup-link a {
            color: #6c757d;
            text-decoration: none;
            font-weight: bold;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }

        /* Right-side Image Styling */
        .image-container {
            flex: 1;
            max-width: 500px;
            margin-left: 20px;
        }

        .image-container img {
            width: 100%;
            height: auto;
            border-radius: 10px;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #6c757d;
            color: white;
            margin-top: 50px;
        }

    </style>
</head>
<body>
    <div class="container">
        <main>
            <section class="login-form">
                <h2>Login</h2>

                <form method="post" action="checknutrilogin">
                    <table>
                        <tr>
                            <td><label for="nemail">Nutritionist Email ID</label></td>
                            <td><input type="email" id="nemail" name="nemail" required/></td>
                        </tr>
                        <tr>
                            <td><label for="npassword">Nutritionist Password</label></td>
                            <td><input type="password" id="npassword" name="npassword" required/></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="button-container">
                                <input type="submit" value="Login" class="submit-btn"/>
                                <input type="reset" value="Clear" class="back-btn"/>
                            </td>
                        </tr>
                    </table>
                </form>

                <button class="back-btn" onclick="window.location.href='/';">Back to Home</button>

                <p class="signup-link">
                    Don't have an account? <a href="nusignup">Sign up here</a>
                </p>
            </section>
        </main>

        <div class="image-container">
            <img src="images/nutritionist.jpg" alt="Nutritionist Image">
        </div>
    </div>
</body>
</html>
