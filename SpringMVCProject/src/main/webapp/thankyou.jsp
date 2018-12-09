<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="com.MVC.Controllers.DB_coonectionController"%>
<%@page import="com.MVC.Controllers.ShiftController"%>
<%@ page import="java.util.List" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<style>

h1, h2, h3, h4, h5, h6 {
	margin: 0;
	padding: 0;
	line-height: .9;
	font-weight: 700;
	color: #333;
}
.profile-block{
	margin:30px auto;
	position:relative;
	overflow:hidden;
	max-width: 300px;
	}
.profile-block .user-heading {
  background: #c5251e none repeat scroll 0 0;
  border-radius: 4px 4px 0 0;
  color: #fff;
  padding: 20px;
  text-align: center;
}
.profile-block .user-heading a img {
	border-radius: 50%;
	margin:auto auto 10px;
	display: block;
	height: 140px;
	width: 140px;
	border: 10px solid rgba(255, 255, 255, 0.3);
}
.profile-block .user-heading h1 {
  color: #fff;
  font-size: 20px;
  font-weight: 300;
  line-height: 22px;
  margin-bottom: 5px;
  margin-top: 5px;
}
.profile-block .user-heading p {
  color: #fff;
  font-size: 12px;
  margin-bottom: 0;
  text-align: center;
}
.profile-block ul{
	padding:0;
	margin:0;
	}
.profile-block ul > li {
  border-bottom: 1px solid #ddd;
  line-height: 30px;
  margin-top: 0;
}
.profile-block .nav > li > a {
  background: #e7e7e7;
  border-radius: 0;
  color: #
h1, h2, h3, h4, h5, h6 {
	margin: 0;
	padding: 0;
	line-height: .9;
	font-weight: 700;
	color: #333;
}
.profile-block{
	margin:30px auto;
	position:relative;
	overflow:hidden;
	max-width: 300px;
	}
.profile-block .user-heading {
  background: #c5251e none repeat scroll 0 0;
  border-radius: 4px 4px 0 0;
  color: #fff;
  padding: 20px;
  text-align: center;
}
.profile-block .user-heading a img {
	border-radius: 50%;
	margin:auto auto 10px;
	display: block;
	height: 140px;
	width: 140px;
	border: 10px solid rgba(255, 255, 255, 0.3);
}
.profile-block .user-heading h1 {
  color: #fff;
  font-size: 20px;
  font-weight: 300;
  line-height: 22px;
  margin-bottom: 5px;
  margin-top: 5px;
}
.profile-block .user-heading p {
  color: #fff;
  font-size: 12px;
  margin-bottom: 0;
  text-align: center;
}
.profile-block ul{
	padding:0;
	margin:0;
	}
.profile-block ul > li {
  border-bottom: 1px solid #ddd;
  line-height: 30px;
  margin-top: 0;
}
.profile-block .nav > li > a {
  background: #e7e7e7;
  border-radius: 0;
  color: #000;
  display: block;
  font-size: 14px;
  padding: 6px 18px;
  position: relative;
  text-align: left;
  text-decoration: none;
}
.profile-block ul > li > a > i {
  color: #000;
  font-size: 16px;
  padding-right: 10px;
}
.profile-block ul > li > a:hover, 
.profile-block ul > li > a:focus, 
.profile-block ul li.active a {
  background: #fff !important;
  border-radius: 0;
  color: #000 !important;
}000;
  display: block;
  font-size: 14px;
  padding: 6px 18px;
  position: relative;
  text-align: left;
  text-decoration: none;
}
.profile-block ul > li > a > i {
  color: #000;
  font-size: 16px;
  padding-right: 10px;
}
.profile-block ul > li > a:hover, 
.profile-block ul > li > a:focus, 
.profile-block ul li.active a {
  background: #fff !important;
  border-radius: 0;
  color: #000 !important;
}

.table-curved {
   border-collapse: separate;
   border: solid #ddd 1px;
   border-radius: 6px;
   border-left: 0px;
   border-top: 0px;
}
.table-curved > thead:first-child > tr:first-child > th {
    border-bottom: 0px;
    border-top: solid #ddd 1px;
}
.table-curved td, .table-curved th {
    border-left: 1px solid #ddd;
    border-top: 1px solid #ddd;
}
.table-curved > :first-child > :first-child > :first-child {
    border-top-left-radius: 6px;
}
.table-curved > :first-child > :first-child > :last-child {
    border-top-right-radius: 6px;
}
.table-curved > :last-child > :last-child > :first-child {
    border-bottom-left-radius: 6px;
}
.table-curved > :last-child > :last-child > :last-child {
    border-bottom-right-radius: 6px;
}

#myInput {
  
  margin-bottom: 12px;
  margin-right: 40;
  
}
.navbar {
    width:100%;  
    border-radius:0;
    margin-bottom:0;
}
.bg-1 { 
      background-color: #1abc9c;
      color: #ffffff;
  }
#myTab{
margin-top:0px;
margin-left:0px;


}
#customers tr:nth-child(even){
background-color: #f2f2f2;
}

</style>
</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Scheduler</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Profile</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="signUp"><span class="glyphicon glyphicon-log-in"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>  
</nav>

 
      







<header class="jumbotron" style="margin-bottom:12px; margin-top:12px; margin-left:80px; margin-right:80px;">
<h1 class="display-3" style="text-align:center; font-weight:100;">${main_message}!</h1>
        <p class="lead" style="text-align: center;">${sub_message}!</p>
</header>
 
 

                                                      
</body>
</html>