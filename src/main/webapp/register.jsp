<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
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
				<h1>REGISTER</h1>
			</div>

			<div id="sub2div" style="height: 300px;">
				<form id="sub3div" action="register" method="post" style="display: flex;align-items: center;justify-content: space-evenly;flex-direction: column;margin-bottom: 0px;">
					<input type="text" name="username" placeholder="Enter your name : "> 
					<input type="text" name="email" placeholder="Enter your email   : ">
					<input type="text" name="password" placeholder="Enter password  :">
					<button class="button" role="button">SUBMIT</button>
				</form>
				<div style="border: 2px solid gray;"><a href="Home.jsp"><button style="height: 30px;font-size: 10px;background-color: gray;">BACK</button></a></div>
				
			</div>
		</div>
	</nav>

</body>
</html>