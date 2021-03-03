<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body
        {
            background-image:url(https://www.collegesearch.in/upload/exam/document/190320043825_Kongu-Engineering-College.jpg);
            background-repeat: no-repeat;
            background-size: 100%;
            object-fit: cover;
        }
           
        .navbar
        {
            font-family:verdana;
            font-size:Medium;
            background-color:rgba(0,0,0,0.4);
            
        }
        p
        {
            font-family: verdana;
            color: rgba(255, 255, 255, 0.87);
            text-align: center;
            margin-top: 100px;
            font-family:Tekton Pro;
            font-size: 45px;
        }
         li,button { margin-right: 50px; } 
    </style>

</head>
<body>

<nav class="navbar navbar-expand-sm navbar-light transparent fixed-top">
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
                
                <li class="nav-item dropdown" >
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style = "color: white;">
          DISPLAY INFORMATION
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="display.jsp">Individual Student</a>
          <a class="dropdown-item" href="displaydep.jsp">Department Wise</a>
        
        </div>
      </li>
     
            </ul>
            
            
              <form class="form-inline " action="Loginsignup">
<%
		if(session.getAttribute("name")==null)
	{
	%>
	
	<a class="sample"><button class="btn btn-success" type="submit" name="login" value="login">LOGIN</button></a>
 	<button class="btn btn-success" type="submit" name="login" value="signup">ADMIN</button>	
<%
}
else{
%>
	<span style="color: white; margin-right : 50px;">Welcome ${name}!!</span>
	<button class="btn btn-success my-2 my-sm-0" type="submit" name="login" value="logout">LOGOUT</button>
<%
}
%>  



  </form>
  
  
</nav>

<br><br>

<p class="m1">KONGU ENGINEERING COLLEGE</p>

</body>
</html>