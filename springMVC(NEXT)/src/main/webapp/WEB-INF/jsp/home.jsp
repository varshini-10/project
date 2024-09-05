<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	* {
  margin: 0;
  padding: 0;
  font-family: sans-serif;
}
.container {
  position: relative;
  height: 100vh;
  width: 100%;
  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
    url("https://images.pexels.com/photos/247431/pexels-photo-247431.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  background-size: cover;
  background-position: center;
  display: flex;
  align-items: center;
  justify-content: center;
}
.container .pagination {
  position: relative;
  height: 60px;
  background: rgba(255, 255, 255, 0.05);
  box-shadow: 5px 5px 30px rgba(0, 0, 0, 0.3);
  display: flex;
  align-items: center;
  justify-content: center;
  backdrop-filter: blur(3px);
  border-radius: 2px;
}
.container .pagination li {
  list-style-type: none;
  display: inline-block;
}
.container .pagination li a {
  position: relative;
  padding: 20px 25px;
  text-decoration: none;
  color: #fff;
  font-weight: 500;
}
.container .pagination li a:hover,
.container .pagination li.active a {
  background: rgba(255, 255, 255, 0.2);
}
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <ul class="pagination">
    <li>
      <a href="/HospitalManagement/patreg">patreg</a>
    </li>
    <li>
      <a href="">appoint</a>
    </li>
    <li class="active">
      <a href="/HospitalManagement/appontment">2</a>
    </li>
    <li>
      <a href="#">3</a>
    </li>
    <li>
      <a href="#">4</a>
    </li>
    <li>
      <a href="#">5</a>
    </li>
    <li>
      <a href="#">Next</a>
    </li>
  </ul>
</div>
</body>
</html>