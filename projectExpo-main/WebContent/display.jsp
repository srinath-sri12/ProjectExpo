<%
String st1=null;
%>

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

<script>
function copyText()
{
    var TextValue = document.getElementById("username").value;
    var syear = TextValue.substr(0,2);
    var iyear = parseInt(syear);
    var dept = TextValue.substr(2,3);
    var sdept = dept.toLowerCase();
    var snum = TextValue.substr(5,3);
    var inum = parseInt(snum);
    var fl = 0;
    var fg = 0;
    var deptarray = ["csr","csl","eer","eel","eir","eil","itr","itl","eer","eel"]; // sample departments
    var discontinue = [[102,202,302],[255,265,275],[101,201,301],[233,243,253]]; //sample discontinued rollnumbers
    if (iyear == 18 || iyear == 17)
    {
        for(i in deptarray)
        {
            var dept = deptarray[i];
            var res = sdept.localeCompare(dept);
            if(res == 0)
            {   
                fg = 1;
                var index = i;
            }    
        }
        if (fg == 1)
        {
            var arr = discontinue[index];
            for (j in arr)
            {
                var resnum = arr[j];
                if(resnum == inum)
                {
                    fl = 1;
                }
            }
            if(fl == 1)
            {
                alert("Discontinued rollno");
            }
            else
            {    
                alert("valid rollno");
            }
        }
        else
        {
            alert("Dept data unavailable");
        }
        
    }
    else
    {
        alert("Year Data Unavailable");
    }
    
}
</script>

    <title>Student Details</title>
	
	<style>
	body {
     background: url('https://ak.picdn.net/shutterstock/videos/11534150/thumb/1.jpg') fixed;
    background-size: cover;
}

.center{
margin-left:700px;
}
h3{
text-align:center;
color:green;
}

h2{
margin: 50px;
color:black;
font-family:Tekton Pro;
}
 th,td{
         border:2px solid black ;
        
         padding:20px 20px 20px 20px;            
         }
		 th{
		 color:red;
		 }
		 table{
		 margin-left:340px;
		 }
		 
		  .form-group
            {
                background-color:rgba(0, 0, 0, 0.37);
                color: white;
                margin-left:480px;
                margin-top:20px;
                margin-bottom:100px;
                border-radius:35px;
                text-align: center;
                width: 35%;
            }
            .input-field 
            {
                width: 60%;
                padding: 5px;
                outline: none;
            }
            .input-field:focus
            {
                border: 2px solid dodgerblue;
            }
            .b4
            {
                color:black;
                text-align: center;
                font-family:Tekton Pro;
            }
            
            #logreg-forms 
            {
                width: 800px;
                margin: 10vh auto;
                background-color: #eaf2f8;
                box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
                transition: all 0.3s cubic-bezier(.25, .8, .25, 1);
                padding: 18px;
            }
            .bo 
            {
                background-color: #ebedef;
            }
            .card-header 
            {
                background-color: #ebdef0;
                font-weight: 700;
                color: #a04000;
            }
            .navbar
            {
                font-family:verdana;
                font-size:Medium;
                background-color:rgba(0,0,0,0.4);   
            }
            li
            {
                margin-right: 50px;
            }
        


	</style>
</head>
<body>


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

<form class="form-horizontal" role="form" action= "display.jsp" method="get">
           
       <div class="container-fluid">
            <br>
            
                <div class="form-group">
                    <br>
                    <label for="updatepaper"><b>ENTER THE ROLL NUMBER</b></label><br>
                    <input class="input-field" type="text" placeholder = "${st1}" id="username" name="name" required><br>

				<%
					st1=request.getParameter("name");
				%>
				<br>
                    <button type="submit" class="btn btn-primary" onclick="copyText()"><b>SEARCH</b></button><br><br>
                </div>
        </div>
  </form>
 

 <%if(st1!=null) {%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>







  
	  			
	  
	     <%  try
	     {
	     	Class.forName("com.mysql.jdbc.Driver");  
	 		Connection conn=DriverManager.getConnection(  
	 				"jdbc:mysql://localhost:3306/project_expo","root","root");    

	 		PreparedStatement st=conn.prepareStatement("SELECT * FROM students_details WHERE Rollno=?");
	 		st.setString(1,st1);
	 		ResultSet rs=st.executeQuery();
	  		
	        
	         rs=st.executeQuery();
	         
	        
	         	while(rs.next()){
	         		  String name =rs.getString("name");
	             	        String roll = rs.getString("rollno");
	             	        String dept = rs.getString("dep");
	             	        
	         		out.println("<h2>   Name :   " + name + "<br> Roll No :   " + roll + "<br> Department :   " + dept +"</h2><hr>" );   
	             
	           
	         		}         
	         	
	             
	         	
	  			
	  
	       
	     }
	     catch(Exception ex)
	     {
	         out.println("<h1>"+ex+"</h1>");
	     }
	 	      
	     
	     %>
	     
	     
	     <div class="mydata">
	  <br>
	  
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
        
        int i=1;
        int k=0;
        	while(rs.next()){
        		
        		
        		  String name =rs.getString("Student_Name");
            	        String roll = rs.getString("Roll_Number");
            	        String dept = rs.getString("Department");
            	        String papername=rs.getString("Paper_Name");
            	        String eventname= rs.getString("Event_Name");
            	        String presentedplace= rs.getString("Presented_Place");
            	        String eventdate= rs.getString("Event_Date");
            	        String prize= rs.getString("Prize_Won");
            	        k++;
            	        
            	        if(k>0) break;
            	        %>
            	        <h3>Paper Details</h3><br>
	  					<table name="myTableData"  border="1" cellpadding="2">
	     				<tr>
	     				<th>S.No</th>
	  		 			<th>Paper Name</th>
	          <th>Event Name</th>
	  		 <th>Presented Place</th>
	          <th>Event Date</th>
	  		 <th>Prize Won</th>
	      </tr>
            	        
            	        <%
            	        
            	        
        		out.println( "<tr><td>"+ i +"</td><td>" + papername + "</td><td>" + eventname + "</td><td>" + presentedplace + "</td><td>" + eventdate + "</td><td>" + prize + "</td></tr>");
            	i++;
          
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
	


			
	  <div class="mydata">
	  <br>
	  <h3>Project Details</h3><br>
	  <table name="myTableData"  border="1" cellpadding="2">
	     <tr>
	           
	          <th>S.No</th>
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
        
       		int i=1;
        	while(rs.next()){
        		 String name =rs.getString("Student_Name");
            	        String roll = rs.getString("Roll_Number");
            	        String dept = rs.getString("Department");
            	        String projectname=rs.getString("project_Name");
            	        String eventname= rs.getString("Event_Name");
            	        String presentedplace= rs.getString("Presented_Place");
            	        String eventdate= rs.getString("Event_Date");
            	        String prize= rs.getString("Prize_Won");
        		//out.println("<tr><td>" + name + "</td><td>" + roll + "</td><td>" + dept + "</td><td>" + projectname + "</td><td>" + eventname+ "</td><td>" + presentedplace + "</td><td>" + eventdate+ "</td><td>" + prize + "</td></tr>");   
        		out.println( "<tr><td>"+ i +"</td><td>" + projectname + "</td><td>" + eventname + "</td><td>" + presentedplace + "</td><td>" + eventdate + "</td><td>" + prize + "</td></tr>");
          		i++;
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
	  

   			
	  <div class="mydata">
	  <br>
	  <h3>Extra-Curricular Activities Details</h3><br>
	  <table name="myTableData"  border="1" cellpadding="2">
	     <tr>
	           
	          <th>S.No</th>
	  		 <th>Extra-Curricular</th>
	          <th>Event Name</th>
	  		 <th>Event Place</th>
	          <th>Event Date</th>
	  		 <th>Prize Won</th>
	      </tr>
	     
	      
	      <%
   
    try
    {
    	Class.forName("com.mysql.jdbc.Driver");  
		Connection conn=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/project_expo","root","root");    

		PreparedStatement st=conn.prepareStatement("SELECT * FROM extra WHERE Roll_Number=?");
		st.setString(1,st1);
		ResultSet rs=st.executeQuery();
 		
       
        rs=st.executeQuery();
        
       		int i=1;
        	while(rs.next()){
        		 String name =rs.getString("Student_Name");
            	        String roll = rs.getString("Roll_Number");
            	        String dept = rs.getString("Department");
            	        String extraname=rs.getString("Activity_Name");
            	        String eventname= rs.getString("Event_Name");
            	        String eventplace= rs.getString("Presented_Place");
            	        String eventdate= rs.getString("Event_Date");
            	        String prize= rs.getString("Prize_Won");
        		//out.println("<tr><td>" + name + "</td><td>" + roll + "</td><td>" + dept + "</td><td>" + extraname + "</td><td>" + eventname+ "</td><td>" + eventplace + "</td><td>" + eventdate+ "</td><td>" + prize + "</td></tr>");  
        		if(extraname != null)
        		out.println( "<tr><td>"+ i +"</td><td>" + extraname + "</td><td>" + eventname + "</td><td>" + eventplace + "</td><td>" + eventdate + "</td><td>" + prize + "</td></tr>");
          		i++;
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
	  
	<br><br>
	<div class="center">
   <button type="submit" class="btn btn-primary "  >Download</button>
</div>
<%  }%>

 <br><br>
</body>
</html>



