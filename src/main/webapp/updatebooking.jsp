<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Booking</title>
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

input.cd:hover{
	background: linear-gradient(white,#00FA9A);
	color: blue;
}

div.sign{
	width: 500px;
	height: 820px;
	background: linear-gradient(#119999,white,#119999);
	opacity: 0.7;
	padding: 20px;
	color: Black;
	border-radius: 30px;
	text-align: center;
 	margin-left:200px;
	margin-right:auto;
	float:left;
	font-size: 30px;
}
img.ribbon1{
			float:right;
			 width:400px;
			 height:450px;
			margin-right:50px;
			margin-top:250px;
		}
h1{	
	font-size: 50px;
	font-weight: bold;
	text-align: center;
	color: black;		

}
</style>
</head>
<body>
<jsp:include page="header.jsp" /><br><br><br><br>
<img src="imghash/har.gif" class="ribbon1">

	<%
	String bookingid = request.getParameter("bookingid");
	String cusid = request.getParameter("cusid");
	String venue = request.getParameter("venue");
	String date = request.getParameter("date");
	String eventtype = request.getParameter("eventtype");
	String capacity = request.getParameter("capacity");
	
	
	
	%>
	
	<h1 >Do You want to update this Event...?</h1>
	<div class="sign">

	<form action="updateb"  method="POST">

	<label for ="text" id="lebel" >Booking ID</label>
	<input class="ab" type="text" id="text" name= "bookingid" value="<%=bookingid %>" readonly />
	<br><br>
	<label for ="text" id="lebel" >Customer ID</label>
	<input  class="ab" type="text" id="text" name="cusid" value="<%=cusid %>"/>
	<br><br>
	<label for ="text" id="lebel" >Venue</label>
	<input  class="ab" type="text" id="text" name="venue" value="<%=venue%>"/>	
	<br><br>
	<label for ="text" id="lebel" >Date</label>
	<input  class="ab" type="text" id="text" name= "date" value="<%=date %>" />
	<br><br>
	<label for ="text" id="lebel" >Event Type</label>
	<input  class="ab"  type="text" id="text" name="event" value="<%=eventtype %>"/>
	<br><br>
	<label for ="text" id="lebel" >Capacity</label>
	<input  class="ab" type="text" id="text" name="capacity" value="<%=capacity %>"/>
	<br><br>
	
	 <input  class="cd" type="submit" value="Update Boooking" id="btn" name="submit">
	</form>
</div>
</body>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<footer>
<jsp:include page="footer.jsp"/>
</footer>
</html>