<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="com.MVC.Controllers.DB_coonectionController"%>
<%@ page import="java.util.List" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

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
</style>
</head>

<body>

<hr>
<div class="container bootstrap snippet" style="background-image: url('https://mdbootstrap.com/img/Photos/Others/architecture.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">"

    <div class="row">
  		<div class="col-sm-10"></div>
    </div>
    <div class="row">
  		<div class="col-sm-5"><!--left col-->
              
   <div class="profile-block">
  <div class="panel text-center">
    <div class="user-heading"> <a href="#"><img src="http://cumbrianrun.co.uk/wp-content/uploads/2014/02/default-placeholder-300x300.png" alt="" title=""></a>
      <h1>${user}</h1>
      <p>${role}</p>
    </div>
    <ul class="nav nav-pills nav-stacked">
      <li><a href="#"><i class="fa fa-user"></i>Profile</a></li>
      <li><a href="#"><i class="fa fa-usd" aria-hidden="true"></i>Edit profile</a></li>
      <li><a href="#"><i class="fa fa-usd" aria-hidden="true"></i>Subscription History</a></li>
      <li><a href="#"><i class="fa fa-usd" aria-hidden="true"></i>Transaction History</a></li>
      <li><a href="#"><i class="fa fa-sign-out"></i>Logout</a></li>
    </ul>
  </div>
</div>
          
        </div><!--/col-3-->
        
        
    	<div class="col-sm-6">
          
          <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#home" data-toggle="tab">My-Schedule</a></li>
            <li><a href="#messages" data-toggle="tab">Messages</a></li>
            <li><a href="#settings" data-toggle="tab">Settings</a></li>
          </ul>
              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
              <div class="table-responsive">
                <table class="table table-hover table table-bordered">
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
          		System.out.println("Q********uery :" + q);
          		List<Object[]> employees = db.session.createSQLQuery(q).list();

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
                <hr>
                <div class="row">
                  <div class="col-md-4 col-md-offset-4 text-center">
                  	<ul class="pagination" id="myPager"></ul>
                  </div>
                </div>
              </div><!--/table-resp-->
              
              <hr>
              
             </div><!--/tab-pane-->
             <div class="tab-pane" id="messages">
               
               <h2></h2>
               
               
               
             </div><!--/tab-pane-->
             <div class="tab-pane" id="settings">
            		
                  <hr>
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
    </div><!--/row-->
                                                      
</body>
</html>