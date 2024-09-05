<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="i" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment Scheduling</title>
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
<body>
<i:form action="/springMVC/appontment" method="post" >
<h1>Enter Details</h1>
	 id: <i:input path="id" /> <br/> 
	Name: <i:input path="name" /> <br>
	Doctor-Department: <i:input path="department" /> <br>
	Doctor Name: <i:input path="docname" /> <br>
	Date: <i:input path="date" /> <br>
	Problem: <i:input path="problem" /> <br>
	<input type="submit" value="save"/>
</i:form>
</body>
</html>