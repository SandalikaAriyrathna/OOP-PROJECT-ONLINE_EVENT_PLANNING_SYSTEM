<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update event</title>
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


	<jsp:include page="header.jsp" /><br><br><br>
	
	<%
		String id=request.getParameter("id");
		String ename=request.getParameter("ename");
		String cname=request.getParameter("cname");
		String location=request.getParameter("location");
		String purpose=request.getParameter("purpose");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
	
	%>
<div class="update">
	<h1 class="x">Update Event</h1>	
	<form action="update" method="post">
	<table>
			<tr>
				<td>Event Id </td>
				<td><input class="ab" type="text" name="eventid" value="<%= id %>" readonly></td>
			</tr>
			<tr>
				<td>Event Name</td>
				<td><input class="ab" type="text" name="ename" value="<%= ename %>"></td>
			</tr>
			<tr>
				<td>Customer Name</td>
				<td><input class="ab" type="text" name="customername" value="<%= cname %>"></td>
			</tr>
			<tr>
				<td>Location</td>
				<td><input class="ab" type="text" name="location" value="<%= location %>"></td>
			</tr>
			<tr>
				<td>Purpose</td>
				<td><input class="ab" type="text" name="purpose" value="<%= purpose %>"></td>
			</tr>
			<tr>
				<td>Date</td>
				<td><input class="ab" type="date" name="date" value="<%= date %>"></td>
			</tr>
			<tr>
				<td>Time</td>
				<td><input class="ab" type="time" name="time" value="<%= time %>"></td>
			</tr>
		</table>
		
		<input class="cd" type="submit" name="submit" value="Update Event"><br>
	</form>
</div>

	<img class="right" src="img/update.gif">

</body>


		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
<footer>
<jsp:include page="footer.jsp"/>
</footer>
</html>