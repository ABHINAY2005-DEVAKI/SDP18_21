<%@page import="com.nutridiet.project.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Admin admin = (Admin)session.getAttribute("admin");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<style>
    /* General Styling */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Arial', sans-serif; /* Simple, readable font */
        background-color: #f9f9f9; /* Light beige background for a clean look */
        color: #333; /* Dark text for readability */
        line-height: 1.6;
        padding: 20px;
    }

    /* Header */
    header {
        background-color: #8d6e63; /* Warm brownish-gray for a neutral tone */
        color: white;
        padding: 20px 0;
        text-align: center;
    }

    header h1 {
        font-size: 2.5em;
        margin: 0;
    }

    /* Navbar Styling */
    nav {
        background-color: #607d8b; /* Slate gray-blue for navigation */
        padding: 10px;
        text-align: center;
    }

    nav a {
        color: white;
        text-decoration: none;
        font-size: 1.2em;
        margin: 0 15px;
        padding: 10px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    nav a:hover {
        background-color: #455a64; /* Darker shade of slate gray */
    }

    /* Main Content */
    .main-content {
        margin-top: 30px;
        text-align: center;
    }

    .main-content h2 {
        font-size: 2em;
        color: #333;
        margin-bottom: 20px;
    }

    .total-users-box {
        background-color: #ffffff;
        border-radius: 8px;
        padding: 30px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 300px;
        margin: 0 auto;
        font-size: 1.5em;
        color: #ffa726; /* Soft orange for a positive but neutral tone */
    }

    /* Footer Styling */
    footer {
        text-align: center;
        margin-top: 50px;
        font-size: 1em;
        color: #9e9e9e; /* Gray footer text */
    }

    footer a {
        color: #607d8b;
        text-decoration: none;
    }

    footer a:hover {
        text-decoration: underline;
    }

</style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<header>
    <h1>Admin Dashboard</h1>
    <p>Manage and analyze nutrient data to help balance diets and detect deficiencies</p>
</header>

<div class="main-content">
    <h2>Welcome to the Admin Home Page</h2><h2><%= admin.getUsername() %></h2>
    <div class="total-users-box">
        Total Users: <c:out value="${count}"></c:out>
    </div>
</div>


</body>
</html>
