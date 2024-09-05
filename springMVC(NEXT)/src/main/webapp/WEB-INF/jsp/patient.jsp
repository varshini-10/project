<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<title>menu</title>

<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="preconnect” href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@e,100;0,30
0;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&Family=Montserrat:
wght@700;800;900&display=swap” rel="stylesheet">

<style>
    *{
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        font-family: 'Josefin Sans', sans-serif;
    }

    .hero{
         height: 100vh;
         width: 100%;
         background-image: url('https://5.imimg.com/data5/MP/UO/GI/GLADMIN-13287718/hms-500x500.jpg');
         background-size: cover;
         background-position: center;
    }

    nav{
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding-top: 40px;
        padding-left: 10%;
        padding-right: 10%;
    }

    .logo{
        color: white;
        font-size: 28px;
    }

    span{
        color: red;
    }

    nav ul li{
        list-style-type: none;
        display: inline-block;
        padding: 10px 20px;
    }

    nav ul li a{
        color: rgb(8, 1, 1);
        text-decoration: none;
        font-weight: bold;
    }

    nav ul li a:hover{
        color: #ea1538;
        transition: .3s;
    }

    button{
        border: none;
        background: black;
        padding: 12px 30px;
        border-radius: 30px;
        color: white;
        font-weight: bold;
        font-size: 15px;
        transition: .4s;
    }

    button:hover{
        transform: scale(1.3);
        cursor: pointer;
    }

    .dropdown-content {
  display: none;
  position: absolute;
  min-width: 160px;
}

.dropdown:hover .dropdown-content {
  display: block;
}

</style>

 </head>


 <body>
    <div class="hero">
        <nav>
         <h2 class="logo">Hospital <span>Management</span></h2>
         <ul>
            <li><a href="/springMVC/map">Our location</a></li>
            <li><a href="/springMVC/email">Email</a></li>
            <li class="dropdown">
                <a href="#specialities">Specialities</a>
                <div class="dropdown-content">
                  <a href="/springMVC/cardiology">Cardiology</a> <br />
                  <a href="#speciality2">Speciality 2</a> <br />
                  <a href="#speciality3">Speciality 3</a> <br />
                  <a href="#speciality4">Speciality 4</a> <br />
                  <a href="#speciality5">Speciality 5</a> <br />
                  <a href="#speciality6">Speciality 6</a>
                </div>
              </li>
 
            <li><a href="/springMVC/contact">Contact us</a></li>
            <li><a href="/springMVC/appontment">Book Appointment</a></li>
         </ul>
       
        </nav>
    </div>

</body>
</html>