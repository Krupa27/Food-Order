
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <link rel="stylesheet" href="css/signup-style.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Libre+Franklin&family=Poppins:wght@300&family=Proza+Libre&display=swap" rel="stylesheet">
<title>Login</title>
</head>
<body class="con" style="background-image: url('https://media.istockphoto.com/id/1171969407/photo/sunrise-at-mount-bromo-volcano-in-east-java-indonesia.jpg?s=2048x2048&w=is&k=20&c=pWpPtN2FkTEhPhCfOOMmZItjjQhnH6HGOS9yflg_QSo=');">
   <h1 class ="heading text-center my-4 shadow-md">Indian Spices</h1>
<div class='container p-3 my-5 bg-light shadow-lg rounded' style="width: 35rem; height:30rem;background-image: url('');" >
     <h1 class="mt-2 p-0" style="	font-family: 'Proza Libre', sans-serif;color:rgb(112, 112, 112);">Sign In</h1>
  		     <br>
  		
     <form class="my-3" action="loginAction.jsp" method="post" >
     <div class="form-group">
           <label for="email">Email:</label>
  		   <input class="form-control" type="email" name="email" placeholder="Enter Email" id="email" required>
     
     </div>
     <div class="form-group">
	      <label for="pwd">Password:</label>     	
	     <input class="form-control" type="password" name="password" placeholder="Enter Password" id="pwd" required>
     </div>
     <br>     
     <input class="btn btn-secondary" style="text-color:rgb(112, 112, 112);" type="submit" value="login">
     </form>
      <h2 class=" mt-4" style="font-size: 1rem;"><a style="color:rgb(112, 112, 112);" href="signup.jsp">Sign Up</a></h2>
      <h2 class=" mt-2" style="font-size: 1rem;"><a style="color:rgb(112, 112, 112);" href="forgotPassword.jsp">Forgot Password?</a></h2>
  
  
  <div >
	  <%
	  
	  String msg=request.getParameter("msg");
	  if("notexist".equals(msg)){
	  %>
	  <h1>Incorrect Username or Password</h1>
	  <%} %>
	  <%
	   if("invalid".equals(msg)){
	  %>
	  <h1>Some thing Went Wrong! Try Again !</h1>
	  <%/*created and designed by AD Singh -- downloaded from http://projects.adsingh.net/*/} %>
		    
    
  </div>
  
  
</div>

</body>
</html>