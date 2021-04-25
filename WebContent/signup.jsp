<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <style>
            .b5
            {
                width: 100%;
                height: 100%;
            }
            .form-group
            {
                background-color:rgba(0, 0, 0, 0.37);
                color: white;
                margin-left:460px;
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
           	  .navbar
        {
            font-family:verdana;
            font-size:large;
            background-color:rgba(0,0,0,0.4);
            
        }
        </style>
<title>Insert title here</title>
</head>
<body background="https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-01.jpg">

 
      <div class="container-fluid">
      
      
        <form action="Data" method="POST" >
            <br>
            <h3 class="b4">CREATE AN ACCOUNT</h3>
                <div class="form-group ">  
                    <br>     
                    <label for="dname">NAME</label><br>
                    <input class="input-field" type="text" placeholder="Enter your Name" id="dname" name="dname" required><br><br>
                    <label for="dmobile">MOBILE</label><br>
                    <input class="input-field" type="tel" placeholder="Enter your Mobile number" name="dmobile" required><br><br>
                    <label for="ddept">DEPARTMENT</label><br>
                    <input class="input-field" type="text" placeholder="Enter your Department" id="ddept" name="ddept" required><br><br>
                    <label for="darea">AREA OF SPECIALIZATION</label><br>
                    <input class="input-field" type="text" placeholder="Area of Specialization" id="darea" name="darea" required><br><br>
                    <label for="dcode">ADMIN CODE</label><br>
                    <input class="input-field" type="password" placeholder="Enter Admin Code" id="dcode" name="dcode" required><br><br>
                    <label for="dpass">PASSWORD</label><br>
                    <input class="input-field" type="password" placeholder="Enter Password" id="dpass" name="dpass" required><br><br>
                    <br>
                    <button type="submit" class="btn btn-success"><b>REGISTER</b></button><br><br>
                </div>
        </form>
      </div>
    

</body>
</html>