<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert Event</title>
	<link rel="stylesheet" type="text/css" href="Prathibha.css">
	<style>
	body {
  		background-image: url('img/sim1.jpg');
  		background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-size: cover;
	}
	input.cd{
		 margin-left:150px;
	}

	</style>
</head>
<body>

<jsp:include page="header.jsp" /><br><br><br>
<h1 class="y">Insert Event</h1>

<div class="insert">
<form action="insert" method="post">
	<table>
		<tr>
			<td>Event Name</td>
			<td><input class="ab" type="text" name="ename"></td>
		</tr>
		<tr>
			<td>Customer Name</td>
			<td><input class="ab" type="text" name="customername"></td>
		</tr>
		<tr>
			<td>Location</td>
			<td><input class="ab" type="text" name="location"></td>
		</tr>
		<tr>
			<td>Purpose</td>
			<td><input class="ab" type="text" name="purpose"></td>
		</tr>
		<tr>
			<td>Date</td>
			<td><input class="ab" type="date" name="date"></td>
		</tr>
		<tr>
			<td>Time </td>
			<td><input class="ab" type="time" name="time"></td>
		</tr>
	</table>	
		<br>
		<input class="cd" type="submit" name="submit" value="Create Event">
	</form>
</div><br><br><br>
<img class="rightinsert" src="img/insert.gif" height="480px" width="480px">

</body>

		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
<footer>
<jsp:include page="footer.jsp"/>
</footer>

</html>