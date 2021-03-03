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

    <title>Delete Paper Details</title>
	
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
[role="form"] h2 { 
    font-family: 'Open Sans' , sans-serif;
    font-size: 40px;
    font-weight: 600;
    color: #fa1005;
    margin-top: 5%;
    text-align: center;
	background-color: #fad7a0
  
}
.container{
margin-right:150px;
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
		 margin-left:250px;
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
<body>


<body
	background="https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-01.jpg">

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
			<li class="nav-item"><a class="nav-link" href="#"
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
	  <table name="myTableData"  border="1" cellpadding="2">
	     <tr>
	           <th>Student Name</th>
	          <th>Roll Number</th>
	          <th>Department</th>
	  		 <th>Paper Name</th>
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
		PreparedStatement st=conn.prepareStatement("SELECT * FROM paper WHERE Roll_Number=?");
		st.setString(1,st1);
		ResultSet rs=st.executeQuery();
 		
       
        rs=st.executeQuery();
        
       
        	while(rs.next()){
        		 String name =rs.getString("Student_Name");
            	        String roll = rs.getString("Roll_Number");
            	        String dept = rs.getString("Department");
            	        String papername=rs.getString("Paper_Name");
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
   
   
			
			
            <form class="form-horizontal" role="form" action="<%= request.getContextPath() %>/DeletePaper" method="post">
            
            
            <!-- below textfield for updating query like updat where "papername" -->
            
			<div class="form-group1">
                    <label for="updatepaer" style="color: #3002fc "; class="col-sm-6  control-label">Enter the Paper Name</label>
                    <div class="col-sm-6">
                        <input type="text" name="deletepapername"  class="form-control" required >
                    </div>
                </div>
               <br>
               
				
           
                
                <button type="submit" class="btn btn-primary btn-block" onclick="fun()" >Delete</button><br>
            </form> 
        </div> 
        
        
        <script>
        function fun()
        {
        	alert("Data Deleted Successfully!");
        }
        
        
        </script>


 <%} %>
</body>
</html>