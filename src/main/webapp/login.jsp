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

	<nav class="navigation">
		<div class="maindiv" style="height: 500px;width: 400px;">
			<div id="sub1div">
				<h1>LOGIN PAGE</h1>
			</div>

			<div id="sub2div" style="height: 300px;">
				<form id="sub3div" action="login" method="post" style="display: flex;align-items: center;justify-content: space-evenly;flex-direction: column;margin-bottom: 10px;">
					<input type="text" name="email" placeholder="Enter email id"> 
					<input type="text" name="password" placeholder="Enter password">
					<button class="button" role="button" type="submit">SUBMIT</button>
				</form>
			</div>
		</div>
	</nav>

</body>
</html>