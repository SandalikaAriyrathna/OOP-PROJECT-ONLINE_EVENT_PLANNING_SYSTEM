<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert your Details</title>


	<style type="text/css">
		
		body{
			font-family: Hind SemiBold;			 
			background: linear-gradient(#116466,white,#116466);
		
		}
		h1{
			font-size: 50px;
  			font-weight: bold;
  			color: #116466;
  			text-align:center;
		}
		h3{
			
  			text-align: left;
		}
		div.sign{
		  width: 350px;
		  height: 600px;
		  background:linear-gradient(white,#119999,white);
		  opacity: 0.7;
		  padding: 20px;
		  margin: 20px;
		  color: blue;
		  border-radius: 30px;
		  border: 3px solid #116466;
		 text-align: center;
		margin-left:auto;
		margin-right:auto;
		  
		}
		
		input.ab{
			width: 275px;
		  	height: 25px;
			border-radius: 10px;
		
		}
		input.cd{
			width: 175px;
		  	height: 40px;
			border-radius: 20px;
			border-color:blue;
		}
		input.cd:hover{
			background: linear-gradient(white,#116466);
			color: blue;
		}
		img.ribbon1{
			float:right;
			margin-top:300px;
			
		}
		img.ribbon2{
			float:left;
			margin-top:300px;
		}
	
			
		
	
	</style>
	
	<script>
		document.write(Date());

		function change(){
	
			var show = document.getElementById('show');
	
			if (show.type=="password") {
				show.type = 'text';
			}
			else{
				show.type = 'password';
			}
		}
	</script>
	
</head>
<body>

	
	<jsp:include page="header.jsp" /><br><br><br>
	
	<img src="imgsanda/giphy.gif" width="200px" class="ribbon1">
	<img src="imgsanda/giphy.gif" width="200px" class="ribbon2">
	


	<h1>Create your Account</h1>
	
	<div class="sign">
		<form action="insertg" method="post">
			
			<h3>Name: </h3><input class="ab" type="text" name="name" placeholder="Enter your name" required><br>
			<h3>Phone Number: </h3><input class="ab" type="text" name="phone" placeholder="Enter your Phone Number" required><br>
			<h3>Email: </h3><input class="ab" type="text" name="email" placeholder="Enter your Email" required><br>
			<h3>User Name: </h3><input class="ab" type="text" name="uid" placeholder="Enter your User Name" required><br>
			<h3>Password: </h3><input class="ab" type="password" name="psw" placeholder="Enter your Password" id="show" required><br><br>
			<input type="checkbox" class="checkbox"  onclick="change()">Show Password<br>
				<br><br>
			<input class="cd" type="submit" name="submit" value="Create Guest"><br>
			
		</form>
				
	</div>
	
<footer>
<jsp:include page="footer.jsp" />
</footer>
	
</body>
</html>