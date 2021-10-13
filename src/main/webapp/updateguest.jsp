<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Account</title>

<link rel="stylesheet" type="text/css" href="sandu.css">

	<style type="text/css">
		
		body{
			font-family: Hind SemiBold;			 
			background:linear-gradient(#116466,white,#116466);
		
		}
		h1{
			font-size: 50px;
  			font-weight: bold;
  			text-align: center;
  			color: #116466;
		}
		h3{
			
  			text-align: left;
		}
		div.sign{
		  width: 450px;
		  height: 500px;
		  background: linear-gradient(white,#119999,white);
		  opacity: 0.7;
		  padding: 20px;
		  margin: 20px;
		  color: Blue;
		  border-radius: 30px;
		  border: 3px solid #116466;
		 text-align: center;
		 	margin-left:150px;
			margin-right:auto;
			float:left;
		}
		
		input.ab{
			width: 275px;
		  	height: 25px;
			border-radius: 10px;
		}
		input.cd{
			width: 150px;
		  	height: 30px;
			border-radius: 20px;
			border-color:blue;
		}
		input.cd:hover{
			background: linear-gradient(white,#116466);
			color: blue;
		}
		img.ribbon{
			float:right;
			margin-right:20px;
			height: 400px;
			 width:450px;
		
		}
		img.ribbon1{
			float:right;
			margin:10px;
			 width:500px;
			 height:250px;
		}
	</style>
	

	
</head>
<body>


	<%
		
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String userName = request.getParameter("uname");
			String password = request.getParameter("pass");
			
		%>
		

		
<jsp:include page="header.jsp" /><br><br><br>
<img src="imgsanda/giphy (1).gif" class="ribbon1">
	
	

		<h1>Update Your Data</h1>
	
	<div class="sign">
		
		<form action="updateg" method="post">
		<table>
			<tr>
				<td><h3>Guest ID</h3></td>
				<td><input class="ab" type="text" name="guestid" value="<%= id %>" readonly></td>
			</tr>
			
			<tr>
				<td><h3>Guest Name</h3></td>
				<td> <input class="ab" type="text" name="name" value="<%= name %>"></td>
			</tr>
			
			<tr>
				<td><h3>Guest Phone Number</h3></td>
				<td><input class="ab" type="text" name="phone" value="<%= phone %>"></td>
			</tr>
			
			<tr>
				<td><h3>Guest Email</h3></td>
				<td> <input class="ab" type="text" name="email" value="<%= email %>"></td>
			</tr>
			
			
			<tr>
				<td><h3>User Name</h3></td>
				<td><input class="ab" type="text" name="uname" value="<%= userName %>"></td>
			</tr>
			
			<tr>
				<td><h3>Password</h3></td>
				<td><input class="ab" type="password" name="pass" value="<%= password %>"></td>
			</tr>
		
		</table>	
		
		<br>
			 <input class="cd" type="submit" name="submit" value="Update my Data">
			 
		</form>
		
	</div>
	
		<img src="imgsanda/login.gif" class="ribbon"/><br><br><br>

</body>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
<footer>
<jsp:include page="footer.jsp"/>
</footer>

</html>
