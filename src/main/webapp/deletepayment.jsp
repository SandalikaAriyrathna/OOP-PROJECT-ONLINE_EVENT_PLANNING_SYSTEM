<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Payment</title>
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
		margin-left: 650px;
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
	form .crd{
		position: relative;
		border-bottom: 2px solid #adadad;
		margin: 30px 0;
		
	}
			img.ribbon1{
			float:right;
			 width:150px;
			margin-right:150px;
			margin-top:100px;
	}
		img.ribbon2{
			float:left;
			 width:300px;
			margin-left:50px;
			margin-top:50px;
	}
</style>
</head>
<body>
<jsp:include page="header.jsp" /><br><br><br><br>
<img src="imgmokshi/dlt.gif" class="ribbon1"><br>
<img src="imgmokshi/dlt22.gif" class="ribbon2"><br>
	<%
		String pid = request.getParameter("pid");
		String cusname = request.getParameter("cusname");
		String cusid = request.getParameter("cusid");
		String amount = request.getParameter("amount");
		String cardno = request.getParameter("cardno");
		String cardtype = request.getParameter("cardtype");
	%>
	
	<div class="center">
	<h1>Delete Payments</h1>
	
	<form action="deletep" method="post">
		<table>
		<tr>
			<td>Payment ID</td>
			<td><input type="text" name="payid" value="<%= pid %>" readonly></td>
		</tr>
		<tr>
			<td>Customer Name</td>
			<td><input type="text" name="cusname" value="<%= cusname %>" readonly></td>
		</tr>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="cusid" value="<%= cusid %>" readonly></td>
		</tr>
		<tr>
			<td>Amount</td>
			<td><input type="text" name="amt" value="<%= amount %>" readonly></td>
		</tr>
		<tr>
			<td>Card No</td>
			<td><input type="text" name="cardno" value="<%= cardno %>" readonly></td>
		</tr>
		<tr>
			<td>Card Type</td>
			<td><input type="text" name="cardtype" value="<%= cardtype %>" readonly></td>
		</tr>
		</table>
		<br>
		<input type="submit" name="submit" value="Delete Payments"><br>
	</form>
</div>	
</body>

<br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>

<footer>
<jsp:include page="footer.jsp"/>
</footer>
</html>