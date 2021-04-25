<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">

<link rel="stylesheet" href="/style.css">
<title>WELCOME</title>
<style>
#logreg-forms {
	width: 800px;
	margin: 10vh auto;
	background-color: #eaf2f8;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
	transition: all 0.3s cubic-bezier(.25, .8, .25, 1);
	padding: 18px;
}

.bo {
	background-color: #ebedef;
}

.card-header {
	background-color: #ebdef0;
	font-weight: 700;
	color: #a04000;
}

.navbar {
	font-family: verdana;
	font-size: Medium;
	background-color: rgba(0, 0, 0, 0.4);
}

li {
	margin-right: 50px;
}
</style>
<title>Insert title here</title>
</head>
<body class="bo"
	background="https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-01.jpg">

	<%
		if (session.getAttribute("name") == null) {
			request.getRequestDispatcher("login.jsp").include(request, response);
		}
	 else { %>

	<nav class="navbar navbar-expand-sm navbar-light transparent "> <img
		href="index.jsp" style="color: white; height: 40px; width: 35px;"
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
		<li class="nav-item">
                    <a class="nav-link" href="display.jsp" style = "color: white;">INFORMATION</a>
                </li>
	</ul>


	<form class="form-inline " action="Loginsignup">
		<span style="color: white; margin-right: 50px;">Welcome
			${name}!!</span>
		<button class="btn btn-success my-2 my-sm-0" type="submit"
			name="login" value="logout">LOGOUT</button>




	</form>


	</nav>



	<div id="logreg-forms">
		<div class="card text-center">
			<div class="card-header">Project Presentation</div>
			<div class="card-body">
				<h5 class="card-title">Add new Project</h5>

				<a href="addproject.jsp" class="btn btn-primary">ADD</a>
			</div>
		</div>
		<br> <br>
		<div class="card text-center">
			<div class="card-header">Project Presentation</div>
			<div class="card-body">
				<h5 class="card-title">Update the Project Presentation</h5>

				<a href="searchproject.jsp" class="btn btn-primary">UPDATE</a>
			</div>
		</div>
		<br> <br>
		<div class="card text-center">
			<div class="card-header">Project Presentation</div>
			<div class="card-body">
				<h5 class="card-title">Delete a Project</h5>


				<a href="searchdeleteproject.jsp" class="btn btn-primary">DELETE</a>
			</div>
		</div>

	</div>
	<% } %>


</body>
</html>