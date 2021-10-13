<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
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
		padding:  50px 0 100px 0;
		margin-left: 650px;
		margin-right: auto;
	}
	.center h1{
		text-align: center;
		padding: 0 0 20px 0;
		border-bottom: 1px solid silver;
	}
	
	input[type="button"]{
		width: 75%;
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
		margin-left: 50px;
		margin-bottom: 10px;
		}
	table,td{
			width: 400px;
  			border: none;
			border-radius: 5px;
			font-size: 20px;
			padding-left: 30px;
			margin-bottom: 50px;
		}
		img.ribbon1{
			float:right;
			 width:400px;
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
<img src="imgmokshi/pay1.gif" class="ribbon1"><br>
<img src="imgmokshi/pay5.gif" class="ribbon2"><br>
	<div class="center">
	<h1>Payment Details</h1>
	<table>
	<c:forEach var="pay" items="${payDetails}">
	
	<c:set var="pid" value="${pay.pid}"/>
	<c:set var="custname" value="${pay.cusname}"/>
	<c:set var="custid" value="${pay.cusid}"/>
	<c:set var="amt" value="${pay.amount}"/>
	<c:set var="cardnum" value="${pay.cardno}"/>	
	<c:set var="cardtyp" value="${pay.cardtype}"/>
	
	<tr>
		<td>Payment ID</td>
		<td>${pay.pid}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${pay.cusname}</td>
	</tr>
	<tr>
		<td>Customer ID</td>
		<td>${pay.cusid}</td>
	</tr>
	<tr>
		<td>Amount</td>
		<td>${pay.amount}</td>
	</tr>
	<tr>
		<td>Card No</td>
		<td>${pay.cardno}</td>
	</tr>
	<tr>
		<td>Card Type</td>
		<td>${pay.cardtype}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	<c:url value="updatepayment.jsp" var="payupdate">
		<c:param name="pid" value="${pid}"/>
		<c:param name="cusname" value="${custname}"/>
		<c:param name="cusid" value="${custid}"/>
		<c:param name="amount" value="${amt}"/>
		<c:param name="cardno" value="${cardnum}"/>
		<c:param name="cardtype" value="${cardtyp}"/>
	</c:url>
	
	<a href="${payupdate}">
	<input class="upt" type="button" name="update" value="Update Payments">
	</a>
	<br><br>
	<c:url value="deletepayment.jsp" var="paydelete">
		<c:param name="pid" value="${pid}"/>
		<c:param name="cusname" value="${custname}"/>
		<c:param name="cusid" value="${custid}"/>
		<c:param name="amount" value="${amt}"/>
		<c:param name="cardno" value="${cardnum}"/>
		<c:param name="cardtype" value="${cardtyp}"/>
	</c:url>
	<a href="${paydelete}">
	<input type="button" name="delete" value="Delete Payments">
	</a>
	</div>
</body>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br>

<footer>
<jsp:include page="footer.jsp"/>
</footer>
</html>