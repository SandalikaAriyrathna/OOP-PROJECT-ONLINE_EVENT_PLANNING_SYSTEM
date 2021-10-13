<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Card Details</title>
<link rel="stylesheet" type="text/css" href="main.css">
<style type="text/css">
	body{
		
		font-family: montserrat;
		background: linear-gradient(120deg,#2980b9,#8e44ad);
		
	}

	.center{
		position: absolute;
		margin-top: 150px;
		transform: translate(-50%, -50%);
		width: 400px;
		background: white;
		border-radius: 10px;
		margin-left: 650px;;
		margin-right: auto;
	}
	.center h1{
		text-align: center;
		padding: 0 0 20px 0;
		border-bottom: 1px solid silver;
	}
	.center form{
		padding: 0 50px 30px;
		box-sizing: border-box;
	}
	
	form .crd{
		position: relative;
		border-bottom: 2px solid #adadad;
		margin: 30px 0;
	}
	
	.crd input {
		width: 100%;
		padding: 0 5px;
		height: 40px;
		font-size:16px;
		border: none;
		background: none;
		outline: none;
	}
	input[type="submit"]{
		width: 100%;
		height: 40px;
		border: 1px solid;
		background: #2691d9;
		border-radius: 25px; 
		font-size: 18px;
		color: #e9f4fb;
		font-weight: 700;
		cursor: pointer;
		outline: none;
		border-bottom: 50px;
		
	}
	img.ribbon1{
			float:right;
			 width:400px;
			margin-right:50px;
			margin-top:30px;
	}
</style>
</head>
<body>
<jsp:include page="header.jsp" /><br><br><br><br>>
	<img src="imgmokshi/pay2.gif" class="ribbon1"><br>
	<div class="center">
	<h1>Card Details</h1>
	<form action="card" method="post">
		<div class="crd">
		Card No <input class="a" type="text" name="cno" placeholder="Enter Your Card No" required><br>
		</div>
		<div class="crd">
		Card Type <input class="b" type="text" name="ctype" placeholder="Enter Your Card Type" required><br>
		</div>
		
		<input type="submit" name="submit" value="Enter">
		
	</form>
	</div>
</body>

		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
<footer>
<jsp:include page="footer.jsp"/>
</footer>

</html>