<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Payment</title>
<link rel="stylesheet" type="text/css" href="main.css">
	<style type="text/css">
		body{
		font-family: montserrat;
		background: linear-gradient(120deg,#2980b9,#8e44ad);
	}

	.center{
		position: absolute;
		margin-top: 300px;
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
		height: 20px;
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
			 width:350px;
			 height:400px;
			margin-right:50px;
			margin-top:100px;
	}
		img.ribbon2{
			float:left;
			 width:400px;
			 height:430px;
			margin-right:50px;
			margin-top:100px;
	}
	</style>
</head>
<body>
<jsp:include page="header.jsp" /><br><br><br><br>
<img src="imgmokshi/pay3.gif" class="ribbon1"><br>
<img src="imgmokshi/pay7.gif" class="ribbon2"><br>
	<%
		String pid = request.getParameter("pid");
		String cusname = request.getParameter("cusname");
		String cusid = request.getParameter("cusid");
		String amount = request.getParameter("amount");
		String cardno = request.getParameter("cardno");
		String cardtype = request.getParameter("cardtype");
	%>
	
	<div class="center">
	<h1>Update Payments</h1>
	<form action="updatep" method="post">
		<div class="crd">
		Payment ID <input type="text" name="payid" value="<%= pid %>" readonly>
		</div>
		<div class="crd">
		Customer Name<input type="text" name="cusname" value="<%= cusname %>">
		</div>
		<div class="crd">
		Customer ID<input type="text" name="cusid" value="<%= cusid %>">
		</div>
		<div class="crd">
		Amount<input type="text" name="amt" value="<%= amount %>">
		</div>
		<div class="crd">
		Card No<input type="text" name="cardno" value="<%= cardno %>">
		</div>
		<div class="crd">
		Card Type<input type="text" name="cardtype" value="<%= cardtype %>">
		</div>
			
		<input type="submit" name="submit" value="Update Payments"><br>
	</form>
	</div>
</body>

		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
<footer>
<jsp:include page="footer.jsp"/>
</footer>
</html>