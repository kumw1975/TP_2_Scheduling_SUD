
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Scheduling SUD</title>

</head>

<body>
<style>
body{margin:0px;}
.menu{
width:100%; 
background-color:red; 
height:70px
;margin:0;
border:0;
position: fixed;
top: 0;
overflow:hidden;
}
.menu_left{
float:left;
}
.menu_right{
float:right;
}
.menu_ul{
list-style:none;
}
.menu_li{
float:left;
margin-right:20px;
}
</style>
	<div class="menu">
	   	<!-- if the user is logged in, show a different menu here.   -->
	   	<!-- Dont show unlogged in users a profile and dashboard page.   -->
	  
		<div class="menu_left">
	    <ul class="menu_ul">
	      <li class="menu_li"><a href="profile">Profile</a></li>
	      <li class="menu_li"><a href="#">Dashboard</a></li>
	      <li class="menu_li"><a href="#">Favorites</a></li>
	    </ul>
		</div>
		
		<!-- if the user is logged in, show a different menu here.   -->
	   	<!-- Dont show logged in user option to signup or login      -->
		
		<div class="menu_right">
	    <ul class="menu_ul">
	      <li class="menu_li"><a href="signUp">SignUp</a></li>
	      <li class="menu_li"><a href="login">Login </a></li>
	      <li class="menu_li"><a href="logout">Logout</a></li>
	    </ul>	
		</div>
	</div>

	<div style="margin-top:140px; width:100%;">		
		<div style="width:300px;margin:0 auto;display:flex; align-items:center; justify-content:center;">
			<h2>SIGN UP HERE</h2>
		</div>
		<div style="width:300px;margin:0 auto;display:flex; align-items:center; justify-content:center;">
		    <form action="employeeHandler" method="post">
				<div style="width:300px;display:flex; align-items:center; justify-content:center;">
					<input type="text" placeholder="First name"/>
				</div>		    	
				<div style="margin-top:5px; width:300px;display:flex; align-items:center; justify-content:center;">
					<input type="text" placeholder="Last name"/>
				</div>		    	
				<div style="margin-top:5px; width:300px;display:flex; align-items:center; justify-content:center;">
					<input type="email" placeholder="Email"/>
				</div>		    	
				<div style="margin-top:5px; width:300px;display:flex; align-items:center; justify-content:center;">
					<input type="text" placeholder="phone"/>
				</div>		    	
				<div style="margin-top:5px; width:300px;display:flex; align-items:center; justify-content:center;">
					<input type="text" placeholder="Role"/>
				</div>		    	
				<div style="margin-top:5px; width:300px;display:flex; align-items:center; justify-content:center;">
					<input type="text" placeholder="address"/>
				</div>		    	
				<div style="margin-top:5px; width:300px;display:flex; align-items:center; justify-content:center;">
					<input type="text" placeholder="password"/>
				</div>		    	
				<div style="margin-top:20px;width:300px;display:flex; align-items:center; justify-content:center;">
					<button  type="submit">Login</button>
				</div>
				<div style="width:300px;display:flex; align-items:center; justify-content:center;">
					<p style="font-size:12px;">Already registered? <a href="login">Login to your account</a></p>
				</div>
		    </form>
		</div>
	</div>

</body>
</html>