<%@page import="com.example.entity.Contact"%>
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

	<% Contact contact = (Contact) request.getAttribute("record"); %>


	<nav class="navigation">
		<div class="maindiv">
			<div id="sub1div">
				<h1>UPDATE CONTACT</h1>
			</div>

			<div id="sub2div">
				<form id="sub3div" action="update" method="post" style="margin-bottom: 10px;">
					<div><label>Contact id</label> <input type="text" name="contactid"  readonly="readonly" value="<%= contact.getContactId()%>"></div><br>
					<div><label>Contact name</label> <input type="text" name="contactname" value="<%= contact.getContactName()%>"></div><br>
					<div><label>Contact number</label> <input type="text" name="contactnumber" value="<%= contact.getContactNumber()%>"></div><br>
					<button class="button" role="button" type="submit">CONFIRM UPDATE</button>
				</form>
				<div style="border: 2px solid gray;margin-top: 10px;"><a href="managecontact"><button style="height: 30px;font-size: 10px;background-color: gray;">BACK</button></a></div>
			</div>
		</div>
	</nav>
	
</body>
</html>