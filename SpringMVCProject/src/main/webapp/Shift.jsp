<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
 
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
 
  <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
  
  <script>
 
  $(function() {
 
    $( "#datepicker" ).datepicker();
 
  });
  
  $(function() {
	  
	    $( "#timepicker" ).timepicker();
	 
	  });
 
  </script>
  

</head>
<body>
<h2>Create Shift</h2>

<form action="shiftHandler" method="post">
  Date:<br>
  <input type="text" name="date" id="datepicker">
  <br><br>
  START TIME:<br>
  <input type="text" name="start_time">
  <br><br>
  END TIME: <br>
  <input type="text" name="end_time">
   <br><br>
  LOCATION: <br>
   <input type="text" name="location">
   <br><br>
  <input type="submit" value="Submit">
</form> 


</body>
</html>