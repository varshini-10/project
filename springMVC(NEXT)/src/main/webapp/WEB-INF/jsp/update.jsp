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
<body>
<i:form action="/HospitalManagement/update" method="post">
<h1>Enter Details</h1>
id: <i:input path="id" /> <br/>
	Name: <i:input path="name" />
	<input type="submit" value="update"/>
</i:form>
</body>
</html>