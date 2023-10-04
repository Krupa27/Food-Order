<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head><link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<link rel="stylesheet" href="css/changeDetails.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Message Us</title>
</head>
<body style="background-image: url('https://images.unsplash.com/photo-1464618663641-bbdd760ae84a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80');">
    <div class="container mt-5">
        <%
        String msg = request.getParameter("msg");
        if ("notMatch".equals(msg)) {
        %>
        <div class="alert alert-danger">
            New password and Confirm password do not match!
        </div>
        <% } %>
        <%
        if ("wrong".equals(msg)) {
        %>
        <div class="alert alert-danger">
            Your old Password is wrong!
        </div>
        <% } %>
        <%
        if ("done".equals(msg)) {
        %>
        <div class="alert alert-success">
            Password changed successfully!
        </div>
        <% } %>
        <%
        if ("invalid".equals(msg)) {
        %>
        <div class="alert alert-danger">
            Something went wrong! Try again!
        </div>
        <% } /*created and designed by AD Singh -- downloaded from http://projects.adsingh.net/*/%>

        <form action="changePasswordAction.jsp" method="post">
            <h3>Enter Old Password</h3>
            <input class="form-control" type="password" name="oldPassword" placeholder="Enter Old Password" required>
            <hr>
            <h3>Enter New Password</h3>
            <input class="form-control" type="password" name="newPassword" placeholder="Enter New Password" required>
            <hr>
            <h3>Enter Confirm Password</h3>
            <input class="form-control" type="password" name="confirmPassword" placeholder="Enter Confirm Password" required>
            <hr>
            <button class="btn btn-primary" type="submit">Save <i class="far fa-arrow-alt-circle-right"></i></button>
        </form>
    </div>
    <script src="path/to/bootstrap.min.js"></script>
</body>
<br><br><br>
</html>