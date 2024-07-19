<%@page import="com.example.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="StyleSheet/manage.css">
</head>
<body>
<% User user = (User) session.getAttribute("user"); %>
	
	<nav class="navigation">
		<div class="maindiv">
			<div id="sub1div">
				<h1>UPDATE PROFILE</h1>
			</div>

			<div id="sub2div">
				<form id="sub3div" action="updateprofile" method="post">
					<div><label>User id</label> <input type="text" name="userid"  readonly="readonly" value="<%=user.getUserId()%>"></div><br>
					<div><label>User name</label> <input type="text" name="username" value="<%=user.getUserName()%>"></div><br>
					<div><label>Email</label> <input type="text" name="email" value="<%=user.getEmail()%>"></div><br>
					<input type="text" name="password" placeholder="Enter new password"><br>
					<button class="button" role="button">CONFIRM</button>
				</form>
				<div style="border: 2px solid gray;"><a href="manageprofile.jsp"><button style="height: 30px;font-size: 10px;background-color: gray;">BACK</button></a></div>
				
			</div>
		</div>
	</nav>
	
</body>
</html>