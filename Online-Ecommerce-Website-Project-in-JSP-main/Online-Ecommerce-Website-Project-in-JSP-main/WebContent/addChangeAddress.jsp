<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add or Change Address</title>
</head>
<body style="background-image: url('css/transformed2.jpeg');">
    <h2 style=" font-family: 'Proza Libre', sans-serif;
    padding: 10px; 
    margin: 0; /* Remove default margin to prevent extra spacing around the element */
    border-radius: 5px; /* Add rounded corners to the element */
    color: #333;
    text-align: center;
    color:rgb(112,112,112);
     /* Set text color */
    " >Add or Change Address</h2>

    <div class="container mt-5" style="font-family: 'Poppins', sans-serif;">
        <%
        String msg = request.getParameter("msg");
        if ("valid".equals(msg)) {
        %>
        <div class="alert alert-success">
            Address Successfully Updated!
        </div>
        <% } %>
        <%
        if ("invalid".equals(msg)) {
        %>
        <div class="alert alert-danger">
            Something Went Wrong! Try Again!
        </div>
        <% } %>
        <%
        try {
            ConnectionProvider conProvider = new ConnectionProvider();
            Connection con = conProvider.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from users where email='" + email + "'");
            while (rs.next()) {
        %>
        <form action="addChangeAddressAction.jsp" method="post">
            <h3>Enter Address</h3>
            <input class="form-control" type="text" name="address" value="<%= rs.getString(7) %>" placeholder="Enter Address" required>
            <hr>
            <h3>Enter City</h3>
            <input class="form-control"  type="text" name="city" value="<%= rs.getString(8) %>" placeholder="Enter City" required>
            <hr>
            <h3>Enter State</h3>
            <input class="form-control" type="text" name="state" value="<%= rs.getString(9) %>" placeholder="Enter State" required>
            <hr>
            <h3>Enter Country</h3>
            <input class="form-control" type="text" name="country" value="<%= rs.getString(10) %>" placeholder="Enter Country" required>
            <hr>
            <button class="btn btn-primary" type="submit">Save <i class="far fa-arrow-alt-circle-right"></i></button>
        </form>
        <%
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        %>
    </div>
    <script src="path/to/bootstrap.min.js"></script>
</body>
<br><br><br>
<br><br><br>
</html>