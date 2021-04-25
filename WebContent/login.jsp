<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link href="login.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
            
            .icon 
            {
                padding: 10px;
                background: black;
                color: white;
                min-width: 50px;
                text-align: center;
               
            }
            .group1
            {
                display: -ms-flexbox;
                display: flex;
                width: 100%;
                margin-bottom: 15px;
                text-align: center;
                margin-left: 70px;
            }
            .imgcontainer
            {
                text-align: center;
                margin: 10px 0 6px 0;
                position: relative;
            }
            .person
            {
                width: 100px;
                border-radius: 70%;
            }
        </style>
    </head>
    <body background="https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-01.jpg">
         <form method="POST" action="Passverify">
        <div class="container-fluid">
            <br><br><br>
            <h3 class="b4">LOGIN</h3>
            <div class="imgcontainer">
                <img src="https://banner2.cleanpng.com/20180728/sac/kisspng-computer-icons-user-symbol-light-client-icon-5b5cfd0bbe3066.907360791532820747779.jpg" alt="OOPS!!!" class="person">
            </div><br><br>
            <div class="form-group">
                <br>
                <div class="group1">
                    <i class="fa fa-envelope icon"></i>
                    <input class="input-field" type="text" placeholder="Enter your UserID" name="uname" required><br><br>   
                </div>
                <div class="group1">
                    <i class="fa fa-key icon"></i>
                    <input class="input-field" type="password" placeholder="Enter Password" name="upass" required><br><br>
                </div>
                
                <button type="submit" class="btn btn-success"><b>LOGIN</b></button><br><br>
            
                <label style="color: white;"><input type="checkbox" > Remember me</label><br><br>
            
            </div>              
        </div>
         </form>
    </body>
</html>