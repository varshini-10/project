<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="i" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Register</title>
    <style>
                body {
            background-image: url('https://i.pinimg.com/564x/8a/f5/0b/8af50b27c68799dd1f116bca271c2bce.jpg');
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
            background-image: url('path/to/your/blur-image.jpg');
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

        i:form {
            text-align: left;
        }

        i:input {
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
</head>
<body>
<div class='card'>
<i:form action="/springMVC/doctorreg" method="post"  >
<h1>SIGN-UP AS A DOCTOR</h1>
	UserName: <br/> <i:input path="uname" /> <br> 
	Email: <br/> <i:input path="email" /> <br>
	Password: <br/> <i:input path="password" /> <br>
	Age: <br/> <i:input path="age" /> <br>
	Gender: <br/> <i:input path="gender" /> <br>
	Department: <br/> <i:input path="department" /> <br>
	Qualification:<br/> <i:input path="qualification" /> <br>
	Date-Joined: <br/> <i:input path="datejoined" /> <br>
	Mobile: <br/> <i:input path="mobile" /> <br>
	<input type="submit" value="sign-in"/>
</i:form>
</div>
</body>
</html>