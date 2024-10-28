<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="data_transfer_object.User_dto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
<style>
     /* Background and layout */
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to bottom, #E6E6FA, #8A2BE2); /* Gradient background */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    /* Form styling */
    form {
        background-color: #FFFFFF;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        width: 400px;
        text-align: center;
    }

    h1 {
        color: #4B0082; /* Indigo color for title */
        margin-bottom: 20px;
        font-size: 24px;
    }

    input[type="text"], input[type="number"], select {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 6px;
        box-sizing: border-box;
        font-size: 16px;
    }

    input[type="submit"] {
        width: 100%;
        background-color: #4B0082; /* Indigo color for submit button */
        color: #FFFFFF;
        padding: 12px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 18px;
        font-weight: bold;
        transition: background-color 0.3s, transform 0.2s;
    }

    input[type="submit"]:hover {
        background-color: #7A1CBE; /* Darker indigo on hover */
        transform: scale(1.03); /* Slight scale effect on hover */
    }

    label {
        font-weight: bold;
        color: #333;
        margin-bottom: 5px;
        display: block;
        font-size: 14px;
    }

    /* Link to home */
    .home-link {
        margin-top: 15px;
        font-size: 15px;
    }

    .home-link a {
        color: #4B0082; /* Indigo color for link */
        text-decoration: none;
        font-size: 16px;
    }

    .home-link a:hover {
        text-decoration: underline;
    }

    /* Success message */
    .success-message {
        color: green;
        margin-top: 15px;
        text-align: center;
        font-size: 16px;
    }
</style>
</head>
<body>
<% 
    User_dto p = (User_dto) request.getAttribute("udto"); 
%>
<form action="UpdateServlet" method="post">
    <h1>Update Profile</h1>

    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" value="<%=p != null ? p.getFirstname() : "" %>" required>

    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" value="<%=p != null ? p.getLastname() : "" %>" required>

    <label for="mobileNumber">Mobile Number:</label>
    <input type="text" id="phno" name="phno" value="<%=p != null ? p.getPhone() : "" %>" required>

    <label for="age">Age:</label>
    <input type="number" id="age" name="age" value="<%=p != null ? p.getAge() : "" %>" required>

    <label for="gender">Gender:</label>
    <select id="gender" name="gender">
        <option value="Male" <%= p != null && "Male".equals(p.getGender()) ? "selected" : "" %>>Male</option>
        <option value="Female" <%= p != null && "Female".equals(p.getGender()) ? "selected" : "" %>>Female</option>
        <option value="Other" <%= p != null && "Other".equals(p.getGender()) ? "selected" : "" %>>Other</option>
    </select><br>
    <% 
    String s = (String) request.getAttribute("s1"); 
    if(s != null) {
%>
    <div class="success-message"><%= s %></div>
<%
    }
%>
    <input type="submit" value="Update Profile">
    <div class="home-link">
        <a href="home.jsp">Go to Home Page?</a>
    </div>
</form>

</body>
</html>
