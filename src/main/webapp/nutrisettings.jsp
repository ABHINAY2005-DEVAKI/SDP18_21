<%@page import="com.nutridiet.project.model.Nutritionist"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
Nutritionist nutri = (Nutritionist) session.getAttribute("nutri");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Nutritionist Profile Update</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #e9dac1, #f4ecd8, #dac3b3);
            color: #4a403a;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-size: 200% 200%;
            animation: backgroundAnimation 12s ease infinite;
        }

        @keyframes backgroundAnimation {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        h3 {
            text-align: center;
            color: #5a4d44;
            text-decoration: underline;
        }

        .form-container {
            width: 80%;
            max-width: 600px;
            background-color: #e5d2c2;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table td {
            padding: 10px;
        }

        label {
            font-weight: bold;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .button-container input {
            width: 48%;
            padding: 10px;
            background-color: #a67f60;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        .button-container input:hover {
            background-color: #c49782;
        }

        a {
            display: block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #5a4d44;
            font-weight: bold;
        }

        /* Styling for the Back button */
        .back-button {
            background-color: #6c757d;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            text-align: center;
            display: block;
            margin-top: 20px;
            text-decoration: none;
        }

        .back-button:hover {
            background-color: #5a6268;
        }

    </style>
</head>
<body>
    <h3>Update Nutritionist Profile</h3>
    <div class="form-container">
        <form method="post" action="updatenutritionistprofile">
            <table>
                <tr>
                    <td><label for="id">Nutritionist ID</label></td>
                    <td><input type="hidden" id="id" name="id" /></td>
                </tr>
                <tr>
                    <td><label for="nemail">Email</label></td>
                    <td><input type="email" id="nemail" name="nemail" required/></td>
                </tr>
                <tr>
                    <td><label for="nname">Name</label></td>
                    <td><input type="text" id="nname" name="nname" required/></td>
                </tr>
                <tr>
                    <td><label for="npassword">Password</label></td>
                    <td><input type="password" id="npassword" name="npassword" required/></td>
                </tr>
                <tr>
                    <td><label for="nage">Age</label></td>
                    <td><input type="number" id="nage" name="nage" required/></td>
                </tr>
                <tr>
                    <td><label for="ncontact">Contact</label></td>
                    <td><input type="text" id="ncontact" name="ncontact" required/></td>
                </tr>
                <tr>
                    <td><label for="nspecification">Specialization</label></td>
                    <td>
                        <select id="nspecification" name="nspecification" required>
                            <option value="">--- Select ---</option>
                            <option value="Dietitian">Dietitian</option>
                            <option value="Clinical Nutritionist">Clinical Nutritionist</option>
                            <option value="Sports Nutritionist">Sports Nutritionist</option>
                            <option value="Holistic Nutritionist">Holistic Nutritionist</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="neducation">Education</label></td>
                    <td><input type="text" id="neducation" name="neducation" required/></td>
                </tr>
                <tr>
                    <td><label for="nexperience">Experience (Years)</label></td>
                    <td><input type="number" id="nexperience" name="nexperience" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update">
                        <input type="reset" value="Clear">
                    </td>
                </tr>
            </table>
        </form>
        <!-- Back Button with redirection -->
        <a href="nuhome" class="back-button">Back</a>
    </div>
</body>
</html>
