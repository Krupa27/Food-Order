<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Libre+Franklin&family=Poppins:wght@300&family=Proza+Libre&display=swap" rel="stylesheet">
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
    <title>Sign Up</title>
  <link rel="stylesheet" href="path/to/bootstrap.min.css">
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
	        margin-bottom:25px;
        }
        .container {
            margin-top: 30px;
            margin-bottom:40px;
        }
        .signup-form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
        }
    </style>
    <title>Sign Up</title>
</head>
<body style="background-image: url('https://media.istockphoto.com/id/1171969407/photo/sunrise-at-mount-bromo-volcano-in-east-java-indonesia.jpg?s=2048x2048&w=is&k=20&c=pWpPtN2FkTEhPhCfOOMmZItjjQhnH6HGOS9yflg_QSo=');">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
              <h1><a style="text-decoration:none;font-size:50px;color: rgb(112, 112, 112);" href="login.jsp">Indian Spices</a></h1>
                <div class="signup-form">
    				<h2>Sign Up</h2>
                    <form action="signupAction.jsp" method="post">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
                        </div>
                        <div class="form-group">
                            <label for="mobileNumber">Mobile Number</label>
                            <input type="number" class="form-control" id="mobileNumber" name="mobileNumber" placeholder="Enter Mobile Number" required>
                        </div>
                        <div class="form-group">
                            <label for="securityQuestion">Security Question</label>
                            <select class="form-control" id="securityQuestion" name="securityQuestion" required>
                                <option value="What was your first car?">What was your first car?</option>
                                <option value="What is the name of your first pet?">What is the name of your first pet?</option>
                                <option value="What elementary school did you attend?">What elementary school did you attend?</option>
                                <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="answer">Answer</label>
                            <input type="text" class="form-control" id="answer" name="answer" placeholder="Enter Answer" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
                        </div>
                        <button type="submit" class="btn btn-secondary">Sign Up</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="path/to/bootstrap.min.js"></script>
</body>
</html>