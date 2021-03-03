<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>update</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link
            href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            rel="stylesheet" id="bootstrap-css">
        <script
            src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script
            src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous">
        <link rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
            integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
            crossorigin="anonymous">
        <link rel="stylesheet" href="/style.css">
        <title>WELCOME</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <style>

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
                color:white;
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
    <body background="https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-01.jpg">
        <%
		if (session.getAttribute("name") == null) {
			request.getRequestDispatcher("login.jsp").include(request, response);
		}
	 else { %>
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
           <form class="form-horizontal" role="form" action="updateproject.jsp" method="get">
           <br><br><br>
        <div class="container-fluid">
            <br>
            <h3 class="b4">ACCOUNT UPDATION</h3>
                <div class="form-group">
                    <br>
                    <label for="updatepaper"><b>ENTER YOUR ROLL NUMBER</b></label><br>
                    <input class="input-field" type="text" placeholder="Enter your Roll number" name="username" required><br>
                    <br>
                    <button type="submit" class="btn btn-primary"><b>SEARCH</b></button><br><br>
                </div>
        </div>
    </form>
    <%} %>
    </body>
</html>