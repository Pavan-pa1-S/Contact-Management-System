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

<div style="border-top: 2px solid white;height: 678px;width: 100%;background-color: black;align-content: center;">

	<nav class="navigation">
		<div class="maindiv" style="height: 500px;width: 400px;">
			<div id="sub1div">
				<h1>ADD CONTACT</h1>
			</div>

			<div id="sub2div" style="height: 300px;">
				<form id="sub3div" action="registercontact" method="post" style="display: flex; align-items: center; justify-content: space-evenly; flex-direction: column;margin-bottom: 0px;">
					<input type="text" name="contactname" placeholder="Enter contact name :">
					<input type="text" name="contactnumber" placeholder="Enter contact number :">
					<button class="button" role="button">SUBMIT</button>
				</form>
				<div style="border: 2px solid gray;margin-top: 0px;"><a href="Home.jsp"><button style="height: 50px;font-size: 25px;background-color: gray;">BACK</button></a></div>
			</div>
		</div>
	</nav>
</div>

</body>
</html>