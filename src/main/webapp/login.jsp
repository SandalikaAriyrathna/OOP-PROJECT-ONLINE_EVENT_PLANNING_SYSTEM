<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>

<link rel="stylesheet" type="text/css" href="sandu.css">

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
		h2{
			
  			text-align: left;
		}
		div.sign{
		  width: 300px;
		  height: 350px;
		  background: linear-gradient(white,#119999,white);
		  opacity: 0.7;
		  padding: 20px;
		  margin: 20px;
		  color: Blue;
		  border-radius: 30px;
		 border: 3px solid  #116466;
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
			width: 100px;
		  	height: 25px;
			border-radius: 20px;
			border-color:blue;
		}
		input.cd:hover{
			background: linear-gradient(white,#116466);
			color: blue;
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

	<header>
		<div class="top">
			<div class="logo">
				<img src="img/logo.PNG">
			</div><!--logo -->
			
			<h1>PS Event Planners</h1>
		</div><!--top-->
		
	</header>	
	<br><br><br>

	

	
	<h1>Log In To Your Account</h1>
	<div>
	
		<div class="sign">
			<form action="logg" method="post">
				<h2>User Name</h2> <input class="ab" type="text" name="uid" placeholder="Enter your username" required><br><br>
				<h2>Password</h2> <input class="ab" type="password" name="pass" placeholder="Enter your password" id="show" required><br><br>
				<input type="checkbox" class="checkbox"  onclick="change()">Show Password<br>
				<br><br><br>
				<input class="cd" type="submit" name="submit" value="Login">
				
			</form>
		</div>		
		</div>
	
	

</body>
</html>