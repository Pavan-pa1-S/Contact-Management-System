<%@page import="com.example.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="StyleSheet/navbar.css">
</head>
<body>

	<%
		User user2 = (User) session.getAttribute("user");
	%>

	<nav class="nav">
		<div class="navmaindiv">
			<div style="width:800px; background-color: grey;margin-left: 30px;font-style: inherit;"><h1>CONTACT MANAGEMENT SYSTEM</h1></div>
			<div style="align-items: flex-end;display: flex;justify-content: space-evenly;">
			<%
				if(user2 == null) {
			%>
				<div style="border-radius: 20%;background-color: gray;font-size: 25px;"><a href="register.jsp" style="color: white;text-decoration: none;">register</a></div>
				<div style="border-radius: 20%;background-color: grey;font-size: 25px;"><a href="login.jsp" style="color: white;text-decoration: none;">login</a></div>
			<%
				} else {
			%>
				<div style="border-radius: 20%;background-color: grey;font-size: 25px;"><a href="logout" style="color: white;text-decoration: none;">logout</a></div>
			<%
			}
			%>
			</div>
		</div>
	</nav>
	
</body>
</html>