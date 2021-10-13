<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Account</title>



		<style type="text/css">
		
		body{
			font-family: Hind SemiBold;			 
			background: linear-gradient(#116466,white,#116466);
		
			
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
		 margin-left:200px;
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
		img.ribbon1{
			float:right;
			margin-right:20px;
			height: 200px;
			 width:450px;
			 margin-top:120px;
		
		}
		img.ribbon2{
			float:right;
			margin:20px;
			 width:450px;
			 height:300px;
			  margin-top:50px;
		}
		
	</style>
	

	
</head>
<body>
	
	
		<%
		
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String userName = request.getParameter("uname");
			String password = request.getParameter("pass");
			
		%>
		
	

	<jsp:include page="header.jsp" /><br><br><br>
	<img src="imgsanda/dlt2.gif" class="ribbon1"><br>
	
				
			
		
		<h1>Guest Account Delete</h1>
		
	<div class="sign">
		
		<form action="deleteg" method="post">
		<table>
			<tr>
				<td><h3>Guest ID</h3></td>
				<td><input class="ab" type="text" name="guestid" value="<%= id %>" readonly></td>
			</tr>
			
			<tr>
				<td><h3>Guest Name</h3></td>
				<td> <input class="ab" type="text" name="name" value="<%= name %>" readonly></td>
			</tr>
			
			<tr>
				<td><h3>Guest Phone Number</h3></td>
				<td><input class="ab" type="text" name="phone" value="<%= phone %>" readonly></td>
			</tr>
			
			<tr>
				<td><h3>Guest Email</h3></td>
				<td> <input class="ab" type="text" name="email" value="<%= email %>" readonly></td>
			</tr>
			
			
			<tr>
				<td><h3>User Name</h3></td>
				<td><input class="ab" type="text" name="uname" value="<%= userName %>" readonly></td>
			</tr>
			
			<tr>
				<td><h3>Password</h3></td>
				<td><input class="ab" type="password" name="pass" value="<%= password %>" readonly></td>
			</tr>
		
		</table>
		
		<br>
			 <input class="cd" type="submit" name="submit" value="Delete my Account">
		
		</form>
	
	</div>
	<img src="imgsanda/san.gif" class="ribbon2">
	
</body>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
<footer>
<jsp:include page="footer.jsp"/>
</footer>
</html>