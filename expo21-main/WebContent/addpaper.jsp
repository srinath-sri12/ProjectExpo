<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


    <title>New Paper Presentation</title>
	
	<style>

[role="form"] {
    max-width: 800px;
    padding: 18px;
  margin:10vh auto;
	
    border-radius: 0.8em;
    background-color: #f8f9f9;
}

[role="form"] h4 { 
    font-family: 'Open Sans' , sans-serif;
    font-size: 40px;
    font-weight: 600;
    color: #fa1005;
    margin-top: 5%;
    text-align: center;
	background-color: #fad7a0
  
}


  .navbar
        {
            font-family:verdana;
            font-size:Medium;
            background-color:rgba(0,0,0,0.4);
            
        }
        li{
        margin-right: 50px;}

	</style>
<title>Insert title here</title>
</head>
<body  background="https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-01.jpg">
	
	<nav class="navbar navbar-expand-sm navbar-light transparent ">
 <img  href="index.jsp" style = "color: white; height: 40px; width:35px;" src="https://nptel.ac.in/content/college_assets/college_logo/781_logo.jpg">

 <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp" role="button" style = "color: white;">HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add.jsp" role="button" style = "color: white;">PROJECT </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="update.jsp" style = "color: white;">PAPER</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="delete.jsp" style = "color: white;">EXTRA-CURRICULAR</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style = "color: white;">INFORMATION</a>
                </li>
            </ul>
            
            
              <form class="form-inline " action="Loginsignup">
              <span style="color: white; margin-right : 50px;">Welcome ${name}!!</span>
	<button class="btn btn-success my-2 my-sm-0" type="submit" name="login" value="logout">LOGOUT</button>




  </form>
  
  
</nav>
<div class="container">
            <form class="form-horizontal" role="form" action="Newpaper" method="post">
                <h4>PAPER PRESENTATION</h4>
                <br><br>
                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label">Student Name</label>
                    <div class="col-sm-12">
                        <input type="text" id="name" name="pname" placeholder="Student Name" class="form-control" required autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="rollno" class="col-sm-3 control-label">Roll Number</label>
                    <div class="col-sm-12">
                        <input type="text" id="roll" name="proll" placeholder="Roll Number" class="form-control" required autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="dept" class="col-sm-3 control-label">Department</label>
                    <div class="col-sm-12">
                        <select id="dept" name="pdept" class="form-control"  required>
							<option value="select">---Select Department---</option>
							<option value="AUTO">AUTO MOBILE ENGINEERING</option>
							<option value="MECH">MECHANICAL ENGINEERING</option>
							<option value="MTS">MECHATRONICS ENGINEERING</option>
							<option value="IT">INFORMATION TECHNOLOGY</option>
							<option value="CSE">COMPUTER SCIENCE and ENGINEERING</option>
							<option value="ECE">ELECTRONICS and COMMUNICATION ENGINEERING</option>
							<option value="EEE">ELECTRICAL and ELECTRONICS ENGINEERING</option>
							<option value="EIE">ELECTRONICS and INSTRUMENTATION ENGINEERING</option>
							<option value="CIVIL">CIVIL ENGINEERING</option>
							<option value="CHEM">CHEMICAL ENGINEERING</option>
							<option value="FT">FOOD TECHNOLOGY</option>
							
						</select>
                    </div>
                </div>
				
				<div class="form-group">
                    <label for="paper" class="col-sm-3 control-label">Paper Name</label>
                    <div class="col-sm-12">
                        <input type="text" id="paper" name="ppaper"  placeholder="Paper Name" class="form-control" required autofocus>
                    </div>
                </div>
				
				<div class="form-group">
                    <label for="eventname" class="col-sm-3 control-label">Event Name</label>
                    <div class="col-sm-12">
                        <input type="text" id="eventname" name="peventname" placeholder="Event Name" class="form-control" required autofocus>
                    </div>
                </div>
				
				
				<div class="form-group">
                    <label for="place" class="col-sm-3 control-label">Presented Place</label>
                    <div class="col-sm-12">
                        <input type="text" id="place" name="pplace" placeholder="Paper presented place" class="form-control" required autofocus>
                    </div>
                </div>
				
				<div class="form-group">
                    <label for="date" class="col-sm-3 control-label">Event Date</label>
                    <div class="col-sm-12">
                        <input type="date" id="date" name="pdate" class="form-control" required autofocus>
                    </div>
                </div>
				
				
				<div class="form-group">
                    <label for="price" class="col-sm-3 control-label">Prize Won</label>
					<div class="styled-select">
                    <div class="col-sm-12" >
                        <select id="price" name="pprize" class="form-control"  required>
							<option value="Select">---Select Prize---</option>
							<option value="I">I</option>
							<option value="II">II</option>
							<option value="III">III</option>
							<option value="None">None</option>
							
							
						</select>
                    </div>
                </div>
				</div>
				<div>
					 <input type = "hidden" name="paper" value="paper"> 
				</div>
				<br>
				
				
           
                
                <button type="submit" class="btn btn-primary btn-block" onclick="fun()">Register</button><br>
            </form> 
        </div> 
		<script>
        function fun()
        {
        	alert("Data Updated Successfully!");
        }
        
        
        </script>

</body>
</html>