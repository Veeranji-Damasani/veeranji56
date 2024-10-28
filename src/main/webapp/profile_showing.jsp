<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="data_transfer_object.User_dto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Details</title>
<style>
    /* Pool-inspired background */
    body {
        background-color: #E0F7FA; /* Light cyan */
        margin: 0;
        padding: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        box-sizing: border-box;
        border: 10px solid #4DD0E1; /* Turquoise border for frame effect */
        border-radius: 15px;
    }

    /* Profile container styling */
    .profile-container {
        background-color: #FFFFFF;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 15px;
        padding: 30px;
        width: 60%;
        text-align: center;
    }

    /* Image styling */
    .image-div {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        overflow: hidden;
        border: 5px solid #4DD0E1; /* Turquoise border */
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 20px;
    }

    .image-div img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    /* Upload button styling */
    .upload-button {
        background-color: #4DD0E1; /* Turquoise */
        color: white;
        font-size: 24px;
        padding: 10px;
        border: none;
        border-radius: 50%;
        cursor: pointer;
        margin-bottom: 5px;
        display: inline-block;
    }

    .upload-text {
        font-size: 16px;
        color: #333;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .finger-icon {
        margin-left: 5px;
        font-size: 20px;
    }

    /* File input hidden */
    .file-input {
        display: none;
    }

    /* Table styling */
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        padding: 15px;
        text-align: center;
        border: 1px solid #ddd;
    }

    th.a {
        background-color: #80DEEA; /* Lighter turquoise */
        color: #FFFFFF;
        font-weight: bold;
    }

    td.b {
        background-color: #E0F2F1; /* Light teal */
    }

    /* Hover effect for rows */
    tr:hover td {
        background-color: #B2EBF2;
    }

    /* Home page link */
    .home-link {
        display: inline-block;
        margin-top: 20px;
        text-decoration: none;
        color: #4DD0E1;
        font-size: 18px;
    }

    .home-link:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<% User_dto p = (User_dto) request.getAttribute("udto1"); %>

<div class="profile-container">
    <!-- Image Section -->
    <div class="image-div">
        <img alt="Your Image" src="<%= p.getImage() %>">
    </div>

    <!-- Upload Section -->
    <div>
        <form action="updatepr" method="post" enctype="multipart/form-data">
            <label class="upload-button">
                + <!-- Plus icon -->
                <input type="file" class="file-input" name="ima" accept="image/*" onchange="this.form.submit()">
            </label>
            <div class="upload-text">
                <span class="finger-icon">&#9757;</span> <!-- Finger icon -->
                update your profile
            </div>
        </form>
    </div>

    <!-- User Details Table -->
    <table>
        <tr>
            <th class="a">Name</th>
            <th class="a">Phone</th>
            <th class="a">Email</th>
            <th class="a">Password</th>
            <th class="a">Age</th>
            <th class="a">Gender</th>
            <th class="a">Address</th>
        </tr>
        <tr>
            <td class="b"><%= p.getFirstname() + " " + p.getLastname() %></td>
            <td class="b"><%= p.getPhone() %></td>
            <td class="b"><%= p.getEmail() %></td>
            <td class="b"><%= p.getPwd() %></td>
            <td class="b"><%= p.getAge() %></td>
            <td class="b"><%= p.getGender() %></td>
            <td class="b"><%= p.getAddress() %></td>
        </tr>
    </table>
    
    <!-- Link to Home Page -->
    <a href="home.jsp" class="home-link">Go to Home Page?</a>
</div>

</body>
</html>
