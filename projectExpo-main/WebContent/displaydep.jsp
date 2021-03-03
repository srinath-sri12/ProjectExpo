<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
function goFurther(){
			if (document.getElementById("paper").checked == true || document.getElementById("project").checked == true || document.getElementById("extra").checked == true )
				document.getElementById("btnSubmit").disabled = false;
			else
				document.getElementById("btnSubmit").disabled = true;
}
</script>

    <title>Department Details</title>
	
	<style>
	body {
     background: url('https://c1.wallpaperflare.com/preview/451/968/45/water-pink-background-soothing.jpg') fixed;
    background-size: cover;
}

[role="form"] {
    max-width: 800px;
    padding: 18px;
  margin:10vh auto;
	
    border-radius: 0.8em;
    background-color:   #f4f6f6 ;
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

  .card-header{
             background-color:  #ebdef0 ;
             font-weight:700;
             color:  #a04000 ;
         }

input[disabled]
{
   color:red; 
}
	</style>
	
	


</head>
<body>


<nav>



</nav>




   <div class="container">
            <form class="form-horizontal" role="form" action="displaydepfinal.jsp" method="get">
                <h2>Display Details </h2>
                <br><br>
                
                
       
   
                
                  <div class="form-group">
                    <label for="dept" class="col-sm-3 control-label">Your Department</label>
                    <div class="col-sm-12">
                        <select id="dept" name="dept" class="form-control" required>
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
                
                
                
                
               <br><br>
                  
                  <br><br>
                  
                  
                  <div class="card text-center">
            <div class="card-header"><h3>Select the field to Display !!</h3></div>
            <div class="card-body">
                
                  
          <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="paperdetails" id="paper" name="paper"  onclick="goFurther()">
                  <label class="form-check-label" for="flexCheckDefault">
                    Paper Presentation 
                  </label>
                </div><br>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="projectdetails" id="project" name="project" onclick="goFurther()">
                  <label class="form-check-label" for="flexCheckDefault">
                    Project Presentation 
                  </label>
                </div><br>
                 <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="extradetails" id="extra" name="extra" onclick="goFurther()">
                  <label class="form-check-label" for="flexCheckDefault">
                    Extra-Curricular 
                  </label>
                </div>
				 </div> 
            
         </div>
                  
          
                	<br><br>			
				
           
                
                <button type="submit" class="btn btn-primary btn-block" id="btnSubmit" disabled>Display</button><br>
            </form> 
        </div> 
       
		

</body>
</html>






