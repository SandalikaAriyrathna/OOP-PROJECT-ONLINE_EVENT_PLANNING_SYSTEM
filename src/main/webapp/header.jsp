<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="sandu.css">
	<style>


	
	nav{
		width:1325px;
		margin-top: 20px;
		padding:1px;
		background: linear-gradient(purple,white);
		text-align: center;
		border-radius: 5px;
	
	}
	
	nav{
		list-style: none;
	}
	
	nav ul li{
		display: inline;
	}
	
	nav ul li a{
		color: Black;
		text-transform:uppercase;
		margin:10px 40px 10px 40px;
		display: inline-block;  
	}
	
	nav ul li a:hover{
		color: white;
	}
	input.cdb{
			width: 130px;
		  	height: 60px;
		  	font-size: 20px;
			border-radius: 10px;
			border-color:white;
			Background:blue;
			float:right;
			color:white;
			margin-right:50px;
			display: inline-block;  
		}
			input.cdbs{
			width: 250px;
		  	height: 60px;
		  	font-size: 20px;
			border-radius: 10px;
			border-color:white;
			Background:blue;
			float:left;
			color:white;
			margin-left:50px;
			display: inline-block;  
		}
	input.cdb:hover{
		Background: lightgreen;
		color:Blue;
	}
	input.cdbs:hover{
		Background: lightgreen;
		color:Blue;
	}
	</style>
</head>
<body>

<header><!-- containers -->
	<div class="top">
		<div class="logo">
			<img src="img/logo.PNG">
		</div><!--logo -->
		
		<h1>PS Event Planners</h1>
	
	</div><!--top-->
		<nav>
			<ul>
				<li><a href="home.jsp">Home</a></li>
				<li><a href="insertguest.jsp">Create Account</a></li>
				<li><a href="login.jsp">Guest Profile</a></li>
				<li><a href="insertpayment.jsp">Make payment</a></li>
				<li><a href="bkinsert.jsp">Book Event</a></li>
			</ul>
			
		</nav>
		
		<br>
<a href="booking.jsp"><input class="cdbs" type="submit" name="submit" value="Search your Bookings"></a>
<a href="carddetails.jsp"><input class="cdbs" type="submit" name="submit" value="Search your Payments"></a>
<a href="adminLogin.jsp"><input class="cdb" type="submit" name="submit" value="Admin Login"></a>
<a href="login.jsp"><input class="cdb" type="submit" name="submit" value="LOGIN"></a>

</header>	
<br>
<br>
<br>

	


</body>
</html>