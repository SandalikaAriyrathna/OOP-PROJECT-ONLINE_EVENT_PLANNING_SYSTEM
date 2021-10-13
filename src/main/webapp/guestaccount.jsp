<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Details</title>

<link rel="stylesheet" type="text/css" href="sandu.css">

	<style type="text/css">
		body{
			font-family: Hind SemiBold;
			background: linear-gradient(#116466,white,#116466);
			
		}
	
		table,td{
			width: 700px;
  			border: none;
			border-radius: 5px;
			font-size: 15px;
			padding-left: 15px;
		}
		input.cd{
			width: 200px;
		  	height: 40px;
			border-radius: 20px;
			margin:10px;
			border-color:blue;
			font-size: 15px;
			
		}
		input.cde{
			width: 200px;
		  	height: 40px;
			border-radius: 20px;
			margin:10px;
			margin-left:75px;
			border-color:blue;
			font-size: 15px;
			
		}
		input.cd:hover{
			background: linear-gradient(white,#116466);
			color: blue;
		}
		input.cde:hover{
			background: linear-gradient(white,#116466);
			color: blue;
		}
		div.sign{
		  width: 600px;
		  height: 500px;
		  background:linear-gradient(#119999,#116466,#119999);
		  opacity: 0.7;
		  padding: 50px;
		  margin: 5px;
		  color: white;
		  border-radius: 30px;
		  border: 3px solid white;
		  margin-left:400px;
		  margin-right:auto;
		}
		h1{
			font-size: 50px;
  			font-weight: bold;
  			text-align: center;
  			color: #116466;
  			 margin-left:auto;
		 	 margin-right:auto;
		}
		
		
		div table.tb{
			 width: 600px;
		}
		img.ribbon{
			float:left;
		}
		
	</style>
	
</head>
<body>

	
	<jsp:include page="header.jsp" /><br><br><br>
	
	<img src="imgsanda/pr.jpg" width="200px" class="ribbon">
	
	<h1>Your Account Details</h1>

	
	<div class="sign">
	
	<table class="tb">
		<c:forEach var="guest" items="${guestDetails}">
		
		<c:set var="id" value="${guest.guestId}"/>
		<c:set var="name" value="${guest.guestName}"/>
		<c:set var="phone" value="${guest.guestPhone}"/>
		<c:set var="email" value="${guest.guestEmail}"/>
		<c:set var="username" value="${guest.userName}"/>
		<c:set var="password" value="${guest.password}"/>
		
		<tr>
			<td><h2>Guest ID</h2></td>
			<td><h2 class="zxc">:</h2></td>
			<td><h2 class="xy">${guest.guestId}</h2></td>
		</tr>
		<tr>
			<td><h2>Guest Name</h2></td>
			<td><h2 class="zxc">:</h2></td>
			<td><h2 class="xy">${guest.guestName}</h2></td>
		</tr>
		
		<tr>
			<td><h2>Guest Phone</h2></td>
			<td><h2 class="zxc">:</h2></td>
			<td><h2 class="xy">${guest.guestPhone}</h2></td>
		</tr>
		
		<tr>
			<td><h2>Guest Email</h2></td>
			<td><h2 class="zxc">:</h2></td>
			<td><h2 class="xy">${guest.guestEmail}</h2></td>
		</tr>
		
		<tr>
			<td><h2>Guest User Name</h2></td>
			<td><h2 class="zxc">:</h2></td>
			<td><h2 class="xy">${guest.userName}</h2></td>
		</tr>
		<tr>
			<td><h2>Guest Password</h2></td>
			<td><h2 class="zxc">:</h2></td>
			<td><h2 class="xy">${guest.password}</h2></td>
		</tr>
	
		</c:forEach>
	</table>

	
	<c:url value="updateguest.jsp" var="guestupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<br>
	
	<a href="${guestupdate}">
		<input class="cd" type="button" name="update" value="Update my Data">
	</a>
	
	
	
	<c:url value="deleteguest.jsp" var="guestdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${guestdelete}">
		<input class="cde" type="button" name="delete" value="Delete my Account"><br>
	</a>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>