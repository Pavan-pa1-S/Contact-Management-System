<%@page import="com.example.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="StyleSheet/navbar.css">
</head>
<body>

	<%
		User user = (User)session.getAttribute("user");
		
		String addContact = user != null ? "registercontact.jsp" : "login.jsp";
		String manageContact = user != null ? "managecontact" : "login.jsp";
		String manageProfile = user != null ? "manageprofile.jsp" : "login.jsp";
	%>
	
	<% String error = (String)request.getAttribute("error"); %>

<div style="border-top: 2px solid white;height: 678px;width: 100%;background-color: black;">
	<%if(user!=null) {%>
	<div>
		<h1 style="color: white">welcome <%=user.getUserName()%></h1>
	</div>
	<%
	}
	%>
	<nav class="homenav">
		<div class="homediv">
			<div><a href="<%=addContact %>" style="text-decoration: none;color: white;">add contact</a></div>
			<div><a href="<%=manageContact %>" style="text-decoration: none;color: white;">manage contact</a></div>
			<div><a href="<%=manageProfile %>" style="text-decoration: none;color: white;">manage profile</a></div>
		</div>
		<div> <h1><%= error %></h1> </div>
	</nav>
</div>
</body>
</html>