<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Event details</title>
	<link rel="stylesheet" type="text/css" href="Prathibha.css">
	<style>
	body {
  		background-image: url('img/sim1.jpg');
  		background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-size: cover;
	}
	img.ribbon1{
			float:right;
			margin-top:700px;
			
		}
		img.ribbon2{
			float:left;
			margin-top:300px;
		}
	
	</style>
</head>
<body>

<jsp:include page="header.jsp" /><br><br><br>
<a href="insertevent.jsp"><input class="ef" type="button" name="insert" value="Insert Events">		
</a><br>
<h1 class="y">View Events</h1>
<img src="img/pr2.gif" width="400px" class="ribbon1"><br>

<img src="img/pr.gif" width="400px" class="ribbon2"><br>




	


<div class="view">

	<table>
	<c:forEach var="eve" items="${eveDetails}">
	
	<c:set var="id" value="${eve.id}"/>
	<c:set var="ename" value="${eve.ename}"/>
	<c:set var="customername" value="${eve.customername}"/>
	<c:set var="location" value="${eve.location}"/>
	<c:set var="purpose" value="${eve.purpose}"/>
	<c:set var="date" value="${eve.date}"/>
	<c:set var="time" value="${eve.time}"/>
	
	<tr>
			<td>Event Id</td>
			<td>${eve.id}</td>
		</tr>
		<tr>
			<td>Event Name</td>
			<td>${eve.ename}</td>
		</tr>
		<tr>
			<td>Customer Name</td>
			<td>${eve.customername}</td>
		</tr>
		<tr>
			<td>Location</td>
			<td>${eve.location}</td>
		</tr>
		<tr>
			<td>Purpose</td>
			<td>${eve.purpose}</td>
		</tr>
		<tr>
			<td>Date</td>
			<td>${eve.date}</td>
		</tr>
		<tr>
			<td>Time</td>
			<td>${eve.time}</td>
		</tr>
		<tr>
			<td>
				<c:url value="updateevent.jsp" var="eveupdate">
					<c:param name="id" value="${id}"/>
					<c:param name="ename" value="${ename}"/>
					<c:param name="cname" value="${customername}"/>
					<c:param name="location" value="${location}"/>
					<c:param name="purpose" value="${purpose}"/>
					<c:param name="date" value="${date}"/>
					<c:param name="time" value="${time}"/>
				</c:url>
				<a href="${eveupdate}">
					<input class="cd" type="button" name="update" value="Update Event">
				</a>
			</td>
			<td>
				<c:url value="deleteevent.jsp" var="evedelete">
					<c:param name="id" value="${id}"/>
					<c:param name="ename" value="${ename}"/>
					<c:param name="cname" value="${customername}"/>
					<c:param name="location" value="${location}"/>
					<c:param name="purpose" value="${purpose}"/>
					<c:param name="date" value="${date}"/>
					<c:param name="time" value="${time}"/>
				</c:url>
				<a href="${evedelete}">
					<input class="cd" type="button" name="delete" value="Delete Event">
				</a>
			</td>
		</tr>
		<tr></tr>
		<tr></tr>
	</c:forEach>
	</table>
	
</div>


</body>



<footer>
<jsp:include page="footer.jsp"/>
</footer>
</html>