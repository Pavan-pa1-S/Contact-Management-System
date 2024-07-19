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
<%
	User user = (User) session.getAttribute("user");
	
	int id = user.getUserId();
	String name = user.getUserName();
	String email = user.getEmail();
%>

<div class="profilediv">

<table class="profiletable">
	<tr>
		<th colspan="5" style="border: 2px solid black;">USER DATA</th>
	</tr>
	<tr>
		<td class="profiletd"><%= id %></td>
		<td class="profiletd"><%= name %></td>
		<td class="profiletd"><%= email %></td>
		<td style="border: 2px solid gray;"><a href="update-profile.jsp"><button style="height: 100px;width: 100%;font-size: 25px;background-color: gray;">Update</button></a></td>
		<td style="border: 2px solid gray;"><a href="deleteprofile"><button style="height: 100px;width: 100%;font-size: 25px;background-color: gray;">Delete Account</button></a></td>
	</tr>
	<tr>
		<td style="border: 2px solid gray;"><a href="Home.jsp"><button style="height: 100px;width: 100%;font-size: 25px;background-color: gray;">BACK</button></a></td>
	</tr>
</table>

</div>
</body>
</html>