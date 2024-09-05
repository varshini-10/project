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
	<h1 align="center"><strong>**PATIENT DETAILS**</strong></h1>
	<%= request.getAttribute("s1") %>
	<br/>
	
	<table align="center">
	<tr>
		<th>Patient_id</th>
		<th>Patient_Name</th>
		<th>Patient_Email</th>
		<th>Patient_Gender</th>
		<th>Patient_Age</th>
		<th>Patient_DOb</th>
		<th>Patient_Mobile</th>
		<th>Patient_Nativep</th>
	</tr>
	<c:forEach var="reg" items="${list}">
	<tr>
		<td>${reg.getId()}</td>
		<td>${reg.getName()}</td>
		<td>${reg.getEmail()}</td>
		<td>${reg.getGender()}</td>
		<td>${reg.getAge()}</td>
		<td>${reg.getDob()}</td>
		<td>${reg.getMobile()}</td>
		<td>${reg.getNativep()}</td>
	</tr>
	</c:forEach>>
	
	</table>
</body>
</html>