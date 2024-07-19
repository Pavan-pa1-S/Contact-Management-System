<%@page import="java.util.Iterator"%>
<%@page import="com.example.entity.Contact"%>
<%@page import="java.util.List"%>
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
		List<Contact> list = (List<Contact>) request.getAttribute("contact");
		Iterator<Contact> l = list.iterator();
	%>

<div class="profilediv">	
	<table class="profiletable">
	
		<tr>
			<th colspan="5" style="border: 2px solid gray;font-size: 40px">USER CONTACTS</th>
		</tr>
	
		<tr>
			<th>CONTACT ID</th>
			<th>CONTACT NAME</th>
			<th>CONTACT NUMBER</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>
	<%
		while(l.hasNext()){
			Contact contact = l.next();
	%>
	
	<tr>
		<td class="profiletd"><%=contact.getContactId()%></td>
		<td class="profiletd"><%=contact.getContactName()%></td>
		<td class="profiletd"><%=contact.getContactNumber()%></td>
		<td style="border: 2px solid gray;"><a href="editcontact?contactId=<%= contact.getContactId()%>"><button style="height: 100px;width: 100%;font-size: 25px;background-color: gray;">Edit</button></a></td>
		<td style="border: 2px solid gray;"><a href="deletecontact?contactId=<%= contact.getContactId()%>"><button style="height: 100px;width: 100%;font-size: 25px;background-color: gray;">Delete</button></a></td>	
	</tr>
	<%
	 }
	%>
	<tr>
		<td style="border: 2px solid gray;"><a href="Home.jsp"><button style="height: 100px;width: 100%;font-size: 25px;background-color: gray;">BACK</button></a></td>
	</tr>
	</table>
</div>
	
</body>
</html>