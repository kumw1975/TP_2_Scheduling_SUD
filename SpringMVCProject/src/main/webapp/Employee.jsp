<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Scheduling SUD</title>

</head>

<body>
<style>
body{margin:0px;}
</style>
	<div style="width:100%; background-color:red; height:70px;margin:0;border:0;position: fixed;
	  top: 0;overflow:hidden;">
		<div style="float:left;">
	    <ul style="list-style:none;">
	      <li style="float:left;margin-right:20px;"><a href="profile">Profile</a></li>
	      <li style="float:left;margin-right:20px;"><a href="#">Page 1</a></li>
	      <li style="float:left;margin-right:20px;"><a href="#">Page 2</a></li>
	    </ul>
		</div>
		<div style="float:right;">
	    <ul style="list-style:none;">
	      <li style="float:left;margin-right:20px;"><a href="signUp">SignUp</a></li>
	      <li style="float:left;margin-right:20px;"><a href="login">Login </a></li>
	      <li style="float:left;margin-right:20px;"><a href="logout">Logout</a></li>
	    </ul>	
		</div>
	</div>
	
	
	<div style="margin-top:140px; width:100%;">
		<div style="width:300px;margin:0 auto;">
			<form action="employeeHandler" method="post">
			  First name:<br>
			  <input type="text" name="firstname" >
			  <br>
			  Last name:<br>
			  <input type="text" name="lastname">
			  <br>
			  Email: <br>
			   <input type="text" name="email">
			   <br><br>
			  phone: <br>
			   <input type="text" name="phone_number">
			   <br><br>
			  Role: <br>
			   <input type="text" name="role">
			   <br><br>
			  address: <br>
			   <input type="text" name="address">
			   <br><br>
			  password: <br>
			   <input type="text" name="password">
			   <br><br>
			  <input type="submit" value="Submit"> 
			</form> 
		</div>
	</div>
</body>
</html>