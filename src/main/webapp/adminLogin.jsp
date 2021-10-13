<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin login</title>
	<link rel="stylesheet" type="text/css" href="Prathibha.css">
	
	<style>
	body {
  		background-image: url('img/sim1.jpg');
  		background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-size: cover;
	}
	</style>
</head>
<body>
<header>
	<div class="top">
		<div class="logo">
			<img src="img/logo.PNG">
		</div><!--logo -->
		
		<h1>PS Event Planners</h1>
	</div><!--top-->
	
</header>	
<br>
<br>
<br>


<div class="sign">
	<h1 class="x">Admin Login Page</h1>
	<form action="log" method="post">
		User Name <input class="ab" type="text" name="username" placeholder="Enter username"><br>
		Password <input class="ab" type="password" name="password" placeholder="Enter password"><br><br><br>
		<input class="cd" type="submit" name="submit" value="Login">
	</form>
<br><br><br>	

</div>

</body>
</html>