<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<title>Change Details</title>
<style>
hr
{width:70%;}</style>
</head>
<body style="background-image: url('https://images.unsplash.com/photo-1464618663641-bbdd760ae84a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80');">
<%
try{
	ConnectionProvider conProvider =new ConnectionProvider();
	Connection con=conProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"'");
	while(rs.next()){

%>
<div class="container">
    <h4>Name: <%=rs.getString(1) %></h4>
    <hr>
    <h4>Email: <%=rs.getString(2) %></h4>
    <hr>
    <h4>Mobile Number: <%=rs.getString(3) %></h4>
    <hr>
    <h4>Security Question: <%=rs.getString(4) %></h4>
</div>
<hr>
      <br>
      <br>
      <br>
<%
}
}catch(Exception e){
	System.out.println(e);
	/*created and designed by AD Singh -- downloaded from http://projects.adsingh.net/*/
}
%>
</body>
</html>