<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Booking</title>
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
	height: 720px;
	background: linear-gradient(#119999,white,#119999);
	opacity: 0.7;
	padding: 5px;
	color: Black;
	border-radius: 30px;
	text-align: center;
	margin-left:auto;
	margin-right:auto;
	font-size: 30px;
}
	img.ribbon1{
			float:right;
			margin-top:200px;
			
		}
		img.ribbon2{
			float:left;
			margin-top:200px;
		}
</style>
</head>
<body>

<jsp:include page="header.jsp" /><br><br><br><br>>

<img src="imghash/BookNow.gif" width="300px" class="ribbon1">
	<img src="imghash/BookNow.gif" width="300px" class="ribbon2">
	


<div class="sign">


 <form action="insertb"  method="POST">

	<label for ="text" id="lebel" >Customer ID</label>
	<input class="ab"  type="text" id="text" name= "cusid" placeholder="1276D" />
	<br><br>
	<label for ="text" id="lebel" >Venue</label>
	<input class="ab" type="text" id="text" name="venue" placeholder="Cagiso Lake Side"/>
	<br><br>
	<label for ="text" id="lebel" >Date</label>
	<input class="ab" type="text" id="text" name="date" placeholder="12/May/2022"/>	
	
	<br><br>
	<label for ="text" id="lebel" >Event Type</label>
	<input class="ab"  type="text" id="text" name= "event" placeholder="Wedding" />
	
	<label for ="text" id="lebel" >Capacity</label>
	<input class="ab" type="text" id="text" name="capacity" placeholder="300"/>
	<br><br>
	
	 <input  class="cd" type="submit" value="Continue to Boooking" id="btn" name="submit">
	
	</form> 
	</div>>
	 
>


</body>



<footer>
<jsp:include page="footer.jsp"/>
</footer>
</html>