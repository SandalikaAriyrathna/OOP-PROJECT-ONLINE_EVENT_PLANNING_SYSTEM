<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Event delete</title>
	<link rel="stylesheet" type="text/css" href="Prathibha.css">
	<style>
	body {
  		background-image: url('img/sim1.jpg');
  		background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-size: cover;
	}
	h1{
	font-size: 50px;
	font-weight: bold;
	margin-left:50px;
	}
		img.ribbon1{
			float:right;
			margin:10px;
			 width:500px;
			margin-top:200px;
		}
	</style>
</head>
<body>

<jsp:include page="header.jsp" /><br><br><br>
	<h1>Do You want to delete this Event...?</h1>
	<img class="ribbon1" src="img/delete.gif" >
	
	<%
		String id=request.getParameter("id");
		String ename=request.getParameter("ename");
		String cname=request.getParameter("cname");
		String location=request.getParameter("location");
		String purpose=request.getParameter("purpose");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
	
	%>

<div class="delete">	
	<form action="delete" method="post">
	<table>
			<tr>
				<td>Event Id </td>
				<td><input class="ab" type="text" name="eventid" value="<%= id %>" readonly></td>
			</tr>
			<tr>
				<td>Event Name</td>
				<td><input class="ab" type="text" name="ename" value="<%= ename %>" readonly></td>
			</tr>
			<tr>
				<td>Customer Name</td>
				<td><input class="ab" type="text" name="customername" value="<%= cname %>" readonly></td>
			</tr>
			<tr>
				<td>Location</td>
				<td><input class="ab" type="text" name="location" value="<%= location %>" readonly></td>
			</tr>
			<tr>
				<td>Purpose</td>
				<td><input class="ab" type="text" name="purpose" value="<%= purpose %>" readonly></td>
			</tr>
			<tr>
				<td>Date</td>
				<td><input class="ab" type="date" name="date" value="<%= date %>" readonly></td>
			</tr>
			<tr>
				<td>Time</td>
				<td><input class="ab" type="time" name="time" value="<%= time %>" readonly></td>
			</tr>
		</table>
		
		<input class="cd" type="submit" name="submit" value="Delete Event"><br>
	</form>
</div>



		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
<footer>
<jsp:include page="footer.jsp"/>
</footer>

</body>
</html>