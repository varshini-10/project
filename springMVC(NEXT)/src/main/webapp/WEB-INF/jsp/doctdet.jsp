<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="i" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>patientdata</title>
<style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 0 auto; /* To center the table */
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2; /* Gray background for table headers */
        }
  
</style>
</head>
<body bgcolor="beige">
	<h1 align="center"><strong>DOCTOR DETAILS</strong></h1>
	<%= request.getAttribute("s1") %>
	<br/>
	
	<table align="center">
	<tr>
		<th>uname</th>
		<th>email</th>
		<th>Name</th>
		<th>Age</th>
		<th>Gender</th>
		<th>Department</th>
		<th>Qualification</th>
		<th>Date Joined</th>
		<th>Mobile</th>
	</tr>
	<c:forEach var="reg" items="${list}">
	<tr>
		<td>${reg.getUname()}</td>
		<td>${reg.getEmail()}</td>
		<td>${reg.getPassword()}</td>
		<td>${reg.getAge()}</td>
		<td>${reg.getGender()}</td>
		<td>${reg.getDepartment()}</td>
		<td>${reg.getQualification()}</td>
		<td>${reg.getDatejoined()}</td>
		<td>${reg.getMobile()}</td>
	</tr>
	</c:forEach>>
	
	</table>
</body>
</html>