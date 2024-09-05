<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="i" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <style>
                body {
           
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Create a pseudo-element for the blur overlay */
        body::before {
            content: "";
           
            background-size: cover;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            filter: blur(8px); /* Adjust the blur strength as needed */
            z-index: -1;
        }

        .card {
            background-color: black; /* Change card background color to black */
            color: white; /* Set text color to white */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        h1 {
            text-align: center;
        }

        form {
            text-align: left;
        }

        input {
              width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
        }

        input[type="submit"] {
background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
<body>
<div class='card'>
<form action="/springMVC/raghuappt" method="post"  >
<h1>BOOK APPOINTMENTS</h1>
	 id: <br/> <input path="id" /> <br/> 
	Name: <br/> <input path="name" /> <br>
	Email: <br/> <input path="email" /> <br>
	Age: <br/> <input path="age" /> <br>
	Gender: <br/> <input path="gender" /> <br>
	DOB: <br/> <input path="dob" /> <br>
	Problem: <br/> <input path="problem" /> <br>
	PAT-NAT: <br/> <input path="native" /> <br>
	Mobile Num:<br/> <input path="mobile" /> <br>
	
	<input type="submit" value="sign-in"/>
</form>
</div>
</body>
</html>