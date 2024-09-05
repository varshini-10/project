<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Hospital</title>
    <style>
        /* Reset default margin and padding */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Apply some basic styling */
body {
    font-family: Arial, sans-serif;
}

.top-navbar {
    background-color: #333;
    color: #fff;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
}

.top-navbar .logo {
    font-size: 24px;
}

.top-menu {
    list-style: none;
    display: flex;
}

.top-menu li {
    margin-right: 20px;
}

.top-menu a {
    text-decoration: none;
    color: #fff;
}

.side-navbar {
    background-color: #555;
    color: #fff;
    width: 250px;
    height: 100%;
    position: fixed;
}

.side-menu {
    list-style: none;
    padding: 20px;
}

.side-menu li {
    margin-bottom: 10px;
}

.side-menu a {
    text-decoration: none;
    color: #fff;
}

.main-content {
    margin-left: 250px;
    padding: 20px;
}

.main-content img {
    max-width: 100%;
    height: auto;
    display: block;
}

/* ... Existing CSS ... */

.profile-link {
    position: relative;
    cursor: pointer;
}

.logout-menu {
    display: none;
    position: absolute;
    top: 30px;
    right: 0;
    background-color: #333;
    color: #fff;
    padding: 10px;
    border-radius: 4px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

.show-logout {
    display: block;
}


    </style>
</head>
<body>
    <div class="top-navbar">
        <h1 class="logo">Hospital Management</h1>
        <ul class="top-menu">
            <li><a href="#">DB</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Portfolio</a></li>
            <li class="profile-link">
                <img src="" alt="Profile Image" id="profile-image">
                <div class="logout-menu" id="logout-menu">
                    <a href="#">Logout</a>
                </div>
            </li>
        </ul>
    </div>
    
    <div class="side-navbar">
        <ul class="side-menu">
            <li><a href="/springMVC/show1">View Patient Details</a></li>
            <li><a href="/HospitalManagement/appointmentdata">View Patient Appointments</a></li>
            <li><a href="/springMVC/raghuappnts">View Appointments</a></li>
            <li><a href="/springMVC/doctorreg">Add Doctors</a></li>
            <li><a href="/springMVC/doctdet">View Doctor Details</a></li>
            <li><a href="#">ADD APPOINTMENTS</a></li>
            <li><a href="#">PARMACY</a></li>
            <li><a href="/springMVC/email">Emails</a></li>
            <li><a href="#">Send Emails</a></li>
            <li><a href="#">Item 10</a></li>
            <li><a href="#">Item 11</a></li>
            <li><a href="#">Item 12</a></li>
            <li><a href="#">Item 13</a></li>
            <li><a href="#">Item 14</a></li>
            <li><a href="#">Item 15</a></li>
        </ul>
    </div>
    
    <div class="main-content">
        <img src="https://media.licdn.com/dms/image/D5612AQEmjedqHFVhGA/article-cover_image-shrink_720_1280/0/1685880185107?e=2147483647&v=beta&t=5BP_WPzcr3SLRb-NejCeOoCmSgz3_lC5Cr82Z-REaW4" alt="Admin Panel">
    </div>
</body>
</html>
