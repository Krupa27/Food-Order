<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="https://icons8.com/icon/27DmEGDOtiB1/mcdonald%60s
" type="image/png" sizes="20x20">
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <nav class="topnav sticky" style="background-image: url('css/transformed.jpeg');">
    <%String email=session.getAttribute("email").toString(); %>
            <div class="text-center mt-2 py-1 shadow-sm"><h2 style="font-family: 'Proza Libre', sans-serif;	color:rgb(112, 112, 112);">Indian Spices</h2></div>
           <a style="font-weight:bolder;font-family:'Poppins','sans-serif';text-decoration:none;color:Black">Hello <%out.println(email.substring(0, email.indexOf("@"))); %>!</a>
            <a style="text-decoration:none;font-family:'Poppins', sans-serif;" href="home.jsp">Home</a>
            <a style="text-decoration:none;font-family:'Poppins', sans-serif;" href="myCart.jsp">My Cart</a>
            <a style="text-decoration:none;font-family:'Poppins', sans-serif;" href="myOrders.jsp">My Orders</a>
            <a style="text-decoration:none;font-family:'Poppins', sans-serif;" href="changeDetails.jsp">Change Details </a>
            <a style="text-decoration:none;font-family:'Poppins', sans-serif;" href="messageUs.jsp">Message Us </a>
            <a style="text-decoration:none;font-family:'Poppins', sans-serif;" href="about.jsp">About </a>
            <a style="text-decoration:none;font-family:'Poppins', sans-serif;" href="logout.jsp">Logout </a>
            <div class="search-container">
             <form action="searchHome.jsp" method="post">
               <input type="text" placeholder="Search" name="search">
               <button type="submit"><i class="fa fa-search"></i></button>
             </form>
            </div>
          </nav>



