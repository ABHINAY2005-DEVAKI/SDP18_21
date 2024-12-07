<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration Success</title>
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
}

/* Header and Navigation Bar */
header {
    background-color: #0062cc;
    color: white;
    padding: 20px 0;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.nav-bar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 90%;
    max-width: 1200px;
    margin: auto;
}

.logo h1 {
    font-size: 32px;
    font-weight: bold;
}

.nav-links {
    display: flex;
    gap: 15px;
}

.nav-links .button {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

.nav-links .button:hover {
    background-color: #0056b3;
}

.nav-links .admin {
    background-color: #dc3545;
}

.nav-links .admin:hover {
    background-color: #c82333;
}

/* Main Content */
main {
    padding: 20px;
    max-width: 900px;
    margin: 50px auto;
    text-align: center;
    background-color: white;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

.intro {
    margin-bottom: 20px;
}

.intro h2 {
    font-size: 28px;
    color: #333;
    margin-bottom: 10px;
}

.intro p {
    font-size: 18px;
    line-height: 1.8;
    color: #555;
}

.features {
    margin-top: 20px;
}

.features h3 {
    font-size: 24px;
    color: #0062cc;
    margin-bottom: 10px;
}

.features ul {
    list-style-type: disc;
    margin-left: 20px;
    text-align: left;
    display: inline-block;
}

.features li {
    font-size: 18px;
    margin-bottom: 10px;
    color: #555;
}

/* Footer */
footer {
    text-align: center;
    padding: 10px 0;
    background-color: #0062cc;
    color: white;
    margin-top: 50px;
}

    </style>
</head>
<body>
<c:out value="${message}"></c:out>
<br><br>
<a href="userlogin">Login Here</a>
</body>
</html>