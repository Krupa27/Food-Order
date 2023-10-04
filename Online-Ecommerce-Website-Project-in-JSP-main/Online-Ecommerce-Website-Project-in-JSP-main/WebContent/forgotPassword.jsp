<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<title>ForgotPassword</title>
<link rel="stylesheet" href="path/to/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Libre+Franklin&family=Poppins:wght@300&family=Proza+Libre&display=swap" rel="stylesheet">
    <style>
        /* Custom CSS styles for a neat design */
        body {
        	background-color:rgb(214, 208, 203);
            font-family: Poppins, sans-serif;
        }
        
         h2{
			font-family:'Proza Libre', sans-serif;
        	color:rgb(112, 112, 112);
        	margin-bottom:35px;
        }
        h1{
	        font-family:'Proza Libre', sans-serif;
	                color:rgb(112, 112, 112);
	        text-align:center;
	        margin-top:15px;
	        margin-bottom:35px;
        
        }
        
        
        #container {
            display: flex;
            justify-content: center;
            
            align-items: center;
            height: 100vh;
            
        }

        .signup {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn-save {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }

        .btn-save:hover {
            background-color: #0056b3;
        }

        .whyforgotPassword {
            margin-top: 20px;
            text-align: center;
        }

        

        h2 {
            font-size: 28px;
            margin-top: 10px;
        }
    </style>
</head>
<body style="background-image: url('https://media.istockphoto.com/id/1171969407/photo/sunrise-at-mount-bromo-volcano-in-east-java-indonesia.jpg?s=2048x2048&w=is&k=20&c=pWpPtN2FkTEhPhCfOOMmZItjjQhnH6HGOS9yflg_QSo=');">
    <div class='container'>
		<div class="row justify-content-center">
    
        <div class='col-md-6'>
    		<h1><a style="text-decoration:none;font-size:50px;color: rgb(112, 112, 112);" href="login.jsp">Indian Spices</a></h1>
        <div class="signup">
        <h2>Recover Account</h2>
            <form action="forgotPasswordAction.jsp" method="post">
                <div class="form-group">
                    <input type="email" class="form-control" name="email" placeholder="Enter Email" required>
                </div>
                <div class="form-group">
                    <input type="number" class="form-control" name="mobileNumber" placeholder="Enter Mobile Number" required>
                </div>
                <div class="form-group">
                    <select class="form-control" name="securityQuestion">
                        <option value="What was your first car?">What was your first car?</option>
                        <option value="What is the name of your first pet?">What is the name of your first pet?</option>
                        <option value="What elementary school did you attend?">What elementary school did you attend?</option>
                       ption value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
                    </select>
                </div>
                <div c=roup">
                    <input type="text" class="form-control" name="answer" placeholder="Enter Answer" required>
                </div>
                <br>
                <div class="form-group">
                    <input type="password" class="form-control" name="newPassword" placeholder="Enter your new password to set" required>
                </div>
                <button type="submit" class="btn btn-secondary">Save</button>
            </form>
            <h2><a style="font-size:15px;color: rgb(112, 112, 112);" href="login.jsp">Login</a></h2>
        </div>
        <div class='whyforgotPassword'>
            <%
            String msg = request.getParameter("msg");
            if ("done".equals(msg)) {
            %>
            <h1>Password Changed Successfully!</h1>
            <%} %>
            <%
            if ("invalid".equals(msg)) {
            %>
            <h1>Something Went Wrong! Try Again!</h1>
            <%}%>
        </div>
        </div>
        </div>
        </div>
    </div>
    <script src="path/to/bootstrap.min.js"></script>
</body>
</html>