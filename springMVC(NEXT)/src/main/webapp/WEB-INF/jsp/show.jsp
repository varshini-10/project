<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="i" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><strong>THIS IS THE JSP PAGE </strong></h1>
	<%= request.getAttribute("s1") %>
	<br/>
	<table>
	<tr>
		<th>Stu_id</th>
		<th>Stu_Name</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach var="stu" items="${list}">
	<tr>
		<td>${stu.getId()}</td>
		<td>${stu.getName()}</td>
		<td><a href="/HospitalManagement/update/${stu.getId()} ">EDIT</a></td>
		<td><a href="/HospitalManagement/delete/${stu.getId()} ">DELETE</a></td>
	</tr>
	</c:forEach>>
	
	</table>
	<br/>
	<a href="/springMVC/add">ADD Student</a>
</body>
</html>