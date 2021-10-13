<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Data</title>
<style>

body {
  background-image: url('img/sim1.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  }
div.top {
  margin:5px;
  padding-right: 30px;
  padding-left: 5px;
  background: #5D5C61;
  width: 1300px;
  height: 170px;
  background-image: url(img/sea.gif);
  background-size: cover;
  background-position: center;
}

header h1{
  font-family: inherit;
  float: right;
  font-size: 50px;
  color: #FFD700;
}
div.logo img{
  width: 150px;
  height: 150px;
  float: left;
  margin-top: 5px;
  margin-bottom: 5px;
  margin-right: 5px;
}
input.ab{
	width: 275px;
	height: 50px;
	border-radius: 10px;
	font-size: 30px;
	margin:20px;
}
		
input.cd{
	width: 200px;
	height: 50px;
	border-radius: 20px;
	border-color:black;
	font-size: 20px;
}
input.cde{
	width: 200px;
	height: 50px;
	border-radius: 20px;
	border-color:black;
	font-size: 20px;
	margin-left: 80px;
}

input.cd:hover{
	background: linear-gradient(white,#00FA9A);
	color: blue;
}

div.sign{
	width: 500px;
	height: 300px;
	background: linear-gradient(#119999,white,#119999);
	opacity: 0.7;
	padding: 20px;
	color: Black;
	border-radius: 30px;
	text-align: left;
	float:left;
	margin-left:50px;
	margin-right:auto;
	font-size: 30px;
}
table,td{
			width: 700px;
  			border: none;
			border-radius: 5px;
			font-size: 25px;
			padding-left: 15px;
		}
		img.ribbon1{
			float:right;
			 width:480px;
			margin-right:50px;
			margin-top:150px;
			
		}
		h1{	
	font-size: 50px;
	font-weight: bold;
	text-align: center;
	color: black;	
	margin-left:450px;	

}
</style>
</head>
<body>
<jsp:include page="header.jsp" /><br><br><br><br>
	<img src="imghash/book1.gif" class="ribbon1"><br>
	<h1>Booking Details</h1>
 	<div class ="sign">
 	<table>
	
 	<c:forEach var="book" items="${BookingDetails}">
 	
 	<c:set var="bookingid" value="${book.bookingid}"/>
 	<c:set var="cusid" value="${book.cusid}"/>
 	<c:set var="venue" value="${book.venue}"/>
 	<c:set var="date" value="${book.date}"/>
 	<c:set var="eventtype" value="${book.eventtype}"/>
 	<c:set var="capacity" value="${book.capacity}"/>
 	
	<tr>
			<td>Booking ID</td>
			<td>${book.bookingid}</td>
		</tr>
		<tr>
			<td>Customer ID</td>
			<td>${book.cusid}</td>
		</tr>
		<tr>
			<td>Venue</td>
			<td>${book.venue}</td>
		</tr>
		<tr>
			<td>Date</td>
			<td>${book.date }</td>
		</tr>
		<tr>
			<td>Event Type</td>
			<td>${book.eventtype }</td>
		</tr>
		<tr>
			<td>Capacity</td>
			<td>${book.capacity }</td>
		</tr>
	</c:forEach>
	</table>
<br>
 	
 <c:url value ="updatebooking.jsp" var="bookingupdate">
 
 		<c:param name = "bookingid" value = "${bookingid}"/>
 		<c:param name = "cusid" value = "${cusid} "/>
 		<c:param name = "venue" value = "${venue}"/>
 		<c:param name = "date" value = "${date}"/>
 		<c:param name = "eventtype" value = "${eventtype}"/>
 		<c:param name = "capacity" value = "${capacity}"/>
 		
 </c:url>
 <a href="${bookingupdate}">
<input class="cd" type="button" value="update booking" id="btn" name="update">
</a>

<c:url value ="deletebooking.jsp" var="deletebooking">

	<c:param name = "bookingid" value = "${bookingid}"/>
 		<c:param name = "cusid" value = "${cusid} "/>
 		<c:param name = "venue" value = "${venue}"/>
 		<c:param name = "date" value = "${date}"/>
 		<c:param name = "eventtype" value = "${eventtype}"/>
 		<c:param name = "capacity" value = "${capacity}"/>


 </c:url>
 <a href="${deletebooking}">
<input class="cde" type="button" value="delete booking" id="btn" name="delete">
</a>
 	

</div>

</body>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<footer>
<jsp:include page="footer.jsp"/>
</footer>
</html>