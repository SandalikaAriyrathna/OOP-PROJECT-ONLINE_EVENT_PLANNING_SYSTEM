<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style>
	.socialmedia{
		width:1325px;
		margin-top: 20px;
		padding:1px;
		background: linear-gradient(white,purple);
		text-align: center;
		border-radius: 5px;
	}

	 .socialmedia ul{
		list-style: none;
	}
	
	 .socialmedia ul li{
		display: inline;
	}
	
	.socialmedia ul li a{
		padding: 8px;
		margin-left: 25px;
		background-color: blue;
		color: white;
		display: inline-block;
		border-radius: 15px;
	}
	
	.socialmedia ul li a:hover{
		background-color: white;
		color:red;
	}

</style>
</head>
<body>

	<div class="socialmedia">
				<ul>
				<li><a href="#"><i class="fa fa-linkedin fa-fw" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter fa-fw" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-pinterest fa-fw" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus fa-fw" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-rss fa-fw" aria-hidden="true"></i></a></li>
				</ul>
			</div> 

</body>
</html>