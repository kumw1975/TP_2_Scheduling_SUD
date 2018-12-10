<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="com.MVC.Controllers.DB_coonectionController"%>
<%@page import="com.MVC.Controllers.ShiftController"%>
<%@ page import="java.util.List" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Login Page</title>
</head>
<style>
body{margin:0px;}
</style>
<body>
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
		<div style="width:300px;margin:0 auto;display:flex; align-items:center; justify-content:center;">
			<h2 style="text-align:center;">${main_message}!</h2>
		</div>
		<div style="width:300px;margin:0 auto;display:flex; align-items:center; justify-content:center;">
			<p style="font-size:12px;text-align:center;">${sub_message}!</p>
 		</div>
	</div>
</body>
</html>



