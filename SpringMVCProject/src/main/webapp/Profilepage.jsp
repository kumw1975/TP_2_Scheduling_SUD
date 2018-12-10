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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css">
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" type="text/javascript">
<script src="js/main.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>

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

.buton{
  background-color: #4CAF50;
  color: white;
  width:100%;
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
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
  
  
</nav>


<header class="jumbotron" style="margin-bottom:12px; margin-top:12px; margin-left:80px; margin-right:80px;">
<h1 class="display-3" style="text-align:center; font-weight:100;">Welcome ${user}! </h1>
        <p class="lead" style="text-align: center;">This is a prototype</p>
        
        
</header>
<div class="container bootstrap snippet" style="margin-left:80px; padding:0; ">

   
        
    	<div class="col-sm-5" style="padding-left:0;">
          
          <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#home" data-toggle="tab" style="color:white; background-color: #4CAF50">My-Schedule</a></li>
            <li><a href="#schedule" data-toggle="tab" style="color:white; background-color: #4CAF50">General-Schedule</a></li>
            <li><a href="#settings" data-toggle="tab" style="color:white; background-color: #4CAF50">Settings</a></li>
          </ul>
              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
              <div class="table-responsive">
                <table class="table table-hover table table-bordered table-bordered table table-curved" id="mySchedule">

                  <thead>
                    <tr>
                      
                      
                      <th>Date</th>
                      <th>Start-Time</th>
                      <th>End-Time</th>
                      <th>location</th>
                      
                      
                      
                    </tr>
                  </thead>
                  <% 
                  DB_coonectionController db = new DB_coonectionController();
          		
          		String user_nm=request.getParameter("username");//get username from loginPage.jsp
          		
          		String q = "SELECT * FROM Schedule WHERE EMPLOYEE_NAME"+"="+"'"+user_nm+"'";
          		String q2 = "SELECT * FROM Schedule";
          		
          		List<Object[]> employees = db.session.createSQLQuery(q).list();
          		List<Object[]> employees2 = db.session.createSQLQuery(q2).list();
          	    %>
          	    	<% for(Object[] result: employees) {%>
          	    	 
          	        
          	    		
          	    		<tbody id="items">
                        <tr>                          
                          <td><%=(String) result[1]%></td>
                          <td><%=(String) result[6]%></td>
                          <td><%=(String) result[4]%></td>
                          <td><%=(String) result[5]%></td>
                        </tr>
                        
          	    		<tbody>
          	    			
          	    	<% } %>
          	    	
          	    	
                  
                </table>
              </div><!--/table-resp-->
              
            
              
             </div><!--/tab-pane-home-->
             <div class="tab-pane" id="schedule">
               
               <h2></h2>
                <input class="form-control" id="myInput" type="text" placeholder="Search..">
                  <div class="table-responsive">
                <table class="table table-hover table table-bordered table table-curved">
                  <thead>
                    <tr>
                      
                      
                      <th>Employee</th>
                      <th>Date</th>
                      <th>Start-Time</th>
                      <th>End-Time</th>
                      <th>Location</th>
                      
                      
                    </tr>
                  </thead>
                  
          	    	<% for(Object[] results: employees2) {%>
          	    	 
          	        
          	    		
          	    		<tbody id="items">
                        <tr>
                          
                          
                          <td><%=(String) results[3]%> </td>
                          <td><%=(String) results[1]%></td>
                          <td><%=(String) results[6]%></td>
                          <td><%=(String) results[4]%></td>
                          <td><%=(String) results[5]%></td>
                          

                        </tr>
                        
          	    		<tbody>
          	    			
          	    	<% } %>
                  
                  
                  
                </table>
                
                
              </div><!--/table-resp-->

             </div><!--/tab-pane-schedule-->
             
             
             <div class="tab-pane" id="settings">
            		
                  
                  <form class="form" action="##" method="post" id="registrationForm">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>First name</h4></label>
                              <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                              <input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any.">
                          </div>
                      </div>
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                              <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any.">
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Mobile</h4></label>
                              <input type="text" class="form-control" name="mobile" id="mobile" placeholder="enter mobile number" title="enter your mobile number if any.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                              <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Location</h4></label>
                              <input type="email" class="form-control" id="location" placeholder="somewhere" title="enter a location">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>Password</h4></label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4>Verify</h4></label>
                              <input type="password" class="form-control" name="password2" id="password2" placeholder="password2" title="enter your password2.">
                          </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
              	</form>
              </div>
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
        <button onclick="confirmShiftswap()"> Reset</button>
</body>
    
    <script>
$(document).ready(function(){
    $(".myTab a").click(function(){
        $(this).tab('show');
    });
});

$(document).ready(function(){
	  $("#myInput").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#schedule tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	});
	

//this function selects cells in the  My-Scheduletable
var date;
var start_time;
var user= '<%=user_nm%>';
$("#mySchedule tr").click(function(){
	   $(this).addClass('selected').siblings().removeClass('selected');    
	   date=$(this).find('td:first').html();
	   start_time=$(this).find('td:nth-child(2)').html();
	   
	   confirmShiftswap();
	});

	$('.ok').on('click', function(e){
	    alert($("#mySchedule tr.selected td:first").html());
	});
	
	
 //This function prompts a dialog box to confirm shift swaping swaping shift
 function confirmShiftswap(){
 $.confirm({
    title: 'Send swap shift request',
    content: 'Simple confirm!',
    draggable: true,
    buttons: {
        confirm: function () {
            $.alert('Confirmed!');
            $.ajax({
    	        url: '/SpringMVCProject1/SwapHandler',
    	        data: {
    	            date: date,
    	            start_time: start_time,
    	            user:user
    	        },
    	        type: 'POST'
    	        
    	    });
            
        },
        cancel: function () {
            $.alert('Canceled!');
        }
       
    }
});
}
</script>
                                                      
</html>