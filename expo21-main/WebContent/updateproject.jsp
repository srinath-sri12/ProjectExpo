<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" name="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <title>Update Paper Details</title>
	
	<style>
	body {
     background: url('https://ak.picdn.net/shutterstock/videos/11534150/thumb/1.jpg') fixed;
    background-size: cover;
}
[role="form"] {
    max-width: 800px;
    padding: 18px;
  margin:10vh auto;
	
    border-radius: 0.8em;
    background-color: #f8f9f9;
}
[role="form"] h5 { 
    font-family: 'Open Sans' , sans-serif;
    color: #fa1005;
    margin-top: 5%;
    text-align: center;
	background-color: #fad7a0
  
}
.container{
margin-left:150px;
}
h3{
text-align:center;
color:green;
}
 th,td{
         border:2px solid black ;
        
         padding:20px 20px 20px 20px;            
         }
		 th{
		 color:red;
		 }
		 table{
		 margin-left:100px;
		 }
		 
	.navbar
        {
            font-family:verdana;
            font-size:Medium;
            background-color:rgba(0,0,0,0.4);
            
            
        }
        li{
        margin-right: 50px;
        }
	</style>
</head>
<body background="https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-01.jpg">

	<%
		if (session.getAttribute("name") == null) {
			request.getRequestDispatcher("login.jsp").include(request, response);
		} else {
	%>

	<nav class="navbar navbar-expand-sm navbar-light transparent ">
		<img href="index.jsp" style="color: white; height: 40px; width: 35px;"
			src="https://nptel.ac.in/content/college_assets/college_logo/781_logo.jpg">

		<ul class="navbar-nav mx-auto">
			<li class="nav-item"><a class="nav-link" href="index.jsp"
				role="button" style="color: white;">HOME</a></li>
			<li class="nav-item"><a class="nav-link" href="add.jsp"
				role="button" style="color: white;">PROJECT </a></li>
			<li class="nav-item"><a class="nav-link" href="update.jsp"
				style="color: white;">PAPER</a></li>
			<li class="nav-item"><a class="nav-link" href="delete.jsp"
				style="color: white;">EXTRA-CURRICULAR</a></li>
			<li class="nav-item"><a class="nav-link" href="display.jsp"
				style="color: white;">INFORMATION</a></li>
		</ul>


		<form class="form-inline " action="Loginsignup">
			<span style="color: white; margin-right: 50px;">Welcome
				${name}!!</span>
			<button class="btn btn-success my-2 my-sm-0" type="submit"
				name="login" value="logout">LOGOUT</button>




		</form>


	</nav>

	<%
		String st1 = request.getParameter("username");
	%>




<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>







  
	  			
	  <div class="mydata">
	  <br>
	  <h3>Current details of the student</h3><br>
	  <table name="myTableData"  border="1" cellpadding="2" style="margin-left:285px;">
	     <tr>
	           <th>Student Name</th>
	          <th>Roll Number</th>
	          <th>Department</th>
	  		 <th>Project Name</th>
	          <th>Event Name</th>
	  		 <th>Presented Place</th>
	          <th>Event Date</th>
	  		 <th>Prize Won</th>
	      </tr>
	     
	      
	      <%
   
    try
    {
    	Class.forName("com.mysql.jdbc.Driver");  
		Connection conn=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/project_expo","root","root");    
		PreparedStatement st=conn.prepareStatement("SELECT * FROM project WHERE Roll_Number=?");
		st.setString(1,st1);
		ResultSet rs=st.executeQuery();
 		
       
        rs=st.executeQuery();
        
       
        	while(rs.next()){
        		 String name =rs.getString("Student_Name");
            	        String roll = rs.getString("Roll_Number");
            	        String dept = rs.getString("Department");
            	        String papername=rs.getString("Project_Name");
            	        String eventname= rs.getString("Event_Name");
            	        String presentedplace= rs.getString("Presented_Place");
            	        String eventdate= rs.getString("Event_Date");
            	        String prize= rs.getString("Prize_Won");
        		out.println("<tr><td>" + name + "</td><td>" + roll + "</td><td>" + dept + "</td><td>" + papername + "</td><td>" + eventname+ "</td><td>" + presentedplace + "</td><td>" + eventdate+ "</td><td>" + prize + "</td></tr>");   
            
          
        		}         
        	
            
        	
 			
 
      
    }
    catch(Exception ex)
    {
        out.println("<h1>"+ex+"</h1>");
    }
	      
%>
	      
	   </table>   
	
	  &nbsp;
	   
	  </div>  
	  
	


   <div class="container">
   
   
			
			
            <form class="form-horizontal" role="form" action="UpdateProject" method="post">
            
            
            <!-- below textfield for updating query like updat where "papername" -->
            
			<div class="form-group1">
                    <label for="updatepaer" style="color: #3002fc "; class="col-sm-6  control-label">Enter the Project Name</label>
                    <div class="col-sm-6">
                        <input type="text" name="updatepaername"  class="form-control" required>
                    </div>
                </div>
                <h5>ENTER NEW DETAILS <br>(please only provide the details which you want to update)</h5>
                <br><br>
                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label">Student Name</label>
                    <div class="col-sm-12">
                        <input type="text" name="name"  class="form-control"  >
                    </div>
                </div>
                <div class="form-group">
                    <label for="rollno" class="col-sm-3 control-label">Roll Number</label>
                    <div class="col-sm-12">
                        <input type="text" name="roll"  class="form-control" >
                    </div>
                </div>
                <div class="form-group">
                    <label for="dept" class="col-sm-3 control-label">Department</label>
                    <div class="col-sm-12">
                        <select name="dept" class="form-control" >
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
                    <label for="eventname" class="col-sm-3 control-label">Event Name</label>
                    <div class="col-sm-12">
                        <input type="text" name="eventname"  class="form-control"  >
                    </div>
                </div>
				
				
				<div class="form-group">
                    <label for="place" class="col-sm-3 control-label">Presented Place</label>
                    <div class="col-sm-12">
                        <input type="text" name="place"  class="form-control"  >
                    </div>
                </div>
				
				<div class="form-group">
                    <label for="date" class="col-sm-3 control-label">Event Date</label>
                    <div class="col-sm-12">
                        <input type="date" name="date" class="form-control"  >
                    </div>
                </div>
				
				
				<div class="form-group">
                    <label for="prize" class="col-sm-3 control-label">Prize Won</label>
					<div class="styled-select">
                    <div class="col-sm-12">
                        <select name="prize" class="form-control" >
							<option value="select">---Select Prize---</option>
							<option value="I">I</option>
							<option value="II">II</option>
							<option value="III">III</option>
							<option value="None">None</option>
							
							
						</select>
                    </div>
                </div>
				</div>
				<br>
				
				
           
                
                <button type="submit" class="btn btn-primary btn-block" onclick="fun()" >Update</button><br>
            </form> 
        </div> 
        
        
        <script>
        function fun()
        {
        	alert("Data Updated Successfully!");
        }
        
        
        </script>

<% } %>
 
</body>
</html>