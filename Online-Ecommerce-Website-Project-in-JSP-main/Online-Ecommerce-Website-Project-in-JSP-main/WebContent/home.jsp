<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Libre+Franklin&family=Poppins:wght@300&family=Proza+Libre&display=swap" rel="stylesheet">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body style="background-image: url('css/transformed.jpeg');">
<%
String msg=request.getParameter("msg");
if("added".equals(msg)){
%>
<h3 class="text-success alert" style="font-family:'Poppins', sans-serif;">Product added successfully!</h3>
<%} %>
<%
if("exist".equals(msg)){
%>
<h3 class="text-success alert" style="font-family:'Poppins', sans-serif;">Product already exist in you cart! Quantity  increased!</h3>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h3 class="text-danger alert" style="font-family:'Poppins', sans-serif;">Something went wrong tryagain!</h3>
<%} %>
<%
try{
	ConnectionProvider conProvider=new ConnectionProvider();
	Connection con=conProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product where active='Yes'");
%>
   <div class="my-5" style="height: 800px;margin-bottom:50px">
    <div class="container">
      <div class="row hidden-md-up">
      
        <div class="col-md-4">
                <div class="card" style="width: 95%;background-color:#e9e9e9;">
        
	  			<img style="height: 180px; width: 100%; display: block;" src="https://media.istockphoto.com/id/1305451801/photo/andhra-dishes-dishes-of-andhra-pradesh.jpg?s=612x612&w=0&k=20&c=k2KeEIvetPTWXK2owmwiXMCrUsLyOzt5IddXXd9vZ-c=" class="card-img-top" alt="100%x180">
	            <div class="card-body">
	              <h4 class="card-title" style="font-family:'Proza Libre', sans-serif;">Hyd Chicken Dum Biryani</h4>
	              <h6 class="card-subtitle text-muted" style="font-family:'Poppins', sans-serif;">Classic Beverages, Biryanis, Platters</h6>
	              <p class="card-text p-y-1" style="font-family:'Poppins', sans-serif;"><i class="fa fa-inr"></i>499</p>
	              <a href="addToCartAction.jsp?id=1 " class="btn btn-outline-secondary" style="font-family:'Poppins', sans-serif;">Add To Cart</a>
	            </div>
          </div>
        </div>
        
        <div class="col-md-4">
			<div class="card" style="width: 95%;background-color:#e9e9e9;">
  			<img style="height: 180px; width: 100%; display: block;" src="https://www.kingarthurbaking.com/sites/default/files/styles/featured_image/public/2021-02/naan-4.jpg?itok=WrlBChWU" class="card-img-top " alt="100%x180">
            <div class="card-body">
              <h4 class="card-title" style="font-family:'Proza Libre', sans-serif;">Butter Naan</h4>
              <h6 class="card-subtitle text-muted" style="font-family:'Poppins', sans-serif;">Tandoori,Western Plateers</h6>
              <p class="card-text p-y-1" style="font-family:'Poppins', sans-serif;"><i class="fa fa-inr"></i>199</p>
              <a href="addToCartAction.jsp?id=2" class="btn btn-outline-secondary" style="font-family:'Poppins', sans-serif;">Add To Cart</a>
            </div>
         </div>
       </div>
       <div class="col-md-4">
        
        <div class="card" style="width: 95%;background-color:#e9e9e9;">
    	  	<img style="height: 180px; width: 100%; display: block;" src="https://www.pistahouse.in/uploads/1581515594-PATTAR%20KA%20GOSH%20.jpg" class="card-img-top" alt="100%x180">
            <div class="card-body">
              <h4 class="card-title" style="font-family:'Proza Libre', sans-serif;">Pathar ka Gosh</h4>
              <h6 class="card-subtitle text-muted" style="font-family:'Poppins', sans-serif;">Spicy , Fast foods, Chinese </h6>
             
              <p class="card-text p-y-1" style="font-family:'Poppins', sans-serif;"><i class="fa fa-inr"></i>549</p>
              <a href="addToCartAction.jsp?id=3" class="btn btn-outline-secondary" style="font-family:'Poppins', sans-serif;">Add To Cart</a>
            </div>
        </div>
      </div>
     </div>
      
      
      
      <div class="row my-5" >
      
        <div class="col-md-4">
                <div class="card" style="width: 95%;background-color:#e9e9e9;">
        
	  			<img style="height: 180px; width: 100%; display: block;" src="https://www.vegrecipesofindia.com/wp-content/uploads/2018/12/khubani-ka-meetha-1a.jpg" class="card-img-top" alt="100%x180">
	            <div class="card-body">
	              <h4 class="card-title" style="font-family:'Proza Libre', sans-serif;">Qubani ka meetha</h4>
	              <h6 class="card-subtitle text-muted" style="font-family:'Poppins', sans-serif;">Classic Beverages, Biryanis, Platters</h6>
	              <p class="card-text p-y-1" style="font-family:'Poppins', sans-serif;"><i class="fa fa-inr"></i>179</p>
	              <a href="addToCartAction.jsp?id=1 " class="btn btn-outline-secondary" style="font-family:'Poppins', sans-serif;">Add To Cart</a>
	            </div>
          </div>
        </div>
        
        
        <div class="col-md-4">
                <div class="card" style="width: 95%;background-color:#e9e9e9;">
        
            				<img style="height: 180px; width: 100%; display: block;" src="https://media.istockphoto.com/id/1305451801/photo/andhra-dishes-dishes-of-andhra-pradesh.jpg?s=612x612&w=0&k=20&c=k2KeEIvetPTWXK2owmwiXMCrUsLyOzt5IddXXd9vZ-c=" class="card-img-top" alt="100%x180">
          
            <div class="card-body">
              <h4 class="dish card-title" style="font-family:'Proza Libre', sans-serif;">Mutton Ghost Biryani</h4>
              <h6 class="card-subtitle text-muted" style="font-family:'Poppins', sans-serif;">Chef's choice,Middle-East Platters</h6>
              <p class="card-text p-y-1" style="font-family:'Poppins', sans-serif;"><i class="fa fa-inr"></i>479</p>
              <a href="addToCartAction.jsp?id=5" class="btn btn-outline-secondary" style="font-family:'Poppins', sans-serif;">Add To Cart</a>
            </div>
          </div>
        </div>
        
        
        <div class="col-md-4">
                <div class="card" style="width: 95%;background-color:#e9e9e9;">
        
            				<img style="height: 180px; width: 100%; display: block;" src="https://10biryanis.com/wp-content/uploads/2022/07/Apollo-fish-scaled.jpg">
          
            <div class="card-body">
              <h4 class="card-title" style="font-family:'Proza Libre', sans-serif;">Apollo Fish</h4>
              <h6 style="font-family:'Poppins', sans-serif;" class="card-subtitle text-muted">Sea Foods,Mixed platters</h6>
              <p style="font-family:'Poppins', sans-serif;" class="card-text p-y-1"><i class="fa fa-inr"></i>679</p>
              
              <a style="font-family:'Poppins', sans-serif;" href="addToCartAction.jsp?id=5" class="btn btn-outline-secondary">Add To Cart</a>
            </div>
          </div>
        </div>
        
        
        
      </div>
      
      
      
      
      <div class="row my-5" >
      
        <div class="col-md-4">
                <div class="card" style="width: 95%;background-color:#e9e9e9;">
        
	  			<img style="height: 180px; width: 100%; display: block;" src="https://img.onmanorama.com/content/dam/mm/en/food/in-season/images/2019/6/5/arabic-mix-grilled.jpg.transform/schema-4x3/image.jpg" class="card-img-top" alt="100%x180">
	            <div class="card-body">
	              <h4 class="card-title" style="font-family:'Proza Libre', sans-serif;">Spl. Mixed Platter</h4>
	              <h6 style="font-family:'Poppins', sans-serif;" class="card-subtitle text-muted">Chef's Choice, Biryanis, Platters</h6>
	              <p style="font-family:'Poppins', sans-serif;" class="card-text p-y-1"><i class="fa fa-inr"></i>799</p>
	              <a v href="addToCartAction.jsp?id=1 " class="btn btn-outline-secondary">Add To Cart</a>
	            </div>
          </div>
        </div>
        
        
        <div class="col-md-4">
                <div class="card" style="width: 95%;background-color:#e9e9e9;">
            	<img style="height: 180px; width: 100%; display: block;" src="https://i.ytimg.com/vi/M7nvJN0vQ3g/maxresdefault.jpg" class="card-img-top" alt="100%x180">
            <div class="card-body">
              <h4 class="card-title" style="font-family:'Proza Libre', sans-serif;">Dal Makhni</h4>
              <h6 style="font-family:'Poppins', sans-serif;" class="card-subtitle text-muted">Curries, Pickles</h6>
      	      <p style="font-family:'Poppins', sans-serif;" class="card-text p-y-1"><i class="fa fa-inr"></i>159</p>
              <a style="font-family:'Poppins', sans-serif;" href="addToCartAction.jsp?id=5" class="btn btn-outline-secondary">Add To Cart</a>
            </div>
          </div>
        </div>
        
        
        <div class="col-md-4">
                <div class="card" style="width: 95%;background-color:#e9e9e9;">
        
            <img style="height: 180px; width: 100%; display: block;" src="https://media.istockphoto.com/id/673858790/photo/butter-chicken-curry-with-tender-chicken-breast-cream-butter-honey.jpg?s=612x612&w=0&k=20&c=c_9bYsi6T3vnCz5_iYqdZViX3iPV4r3fL2oTGSps8W8=" class="card-img-top" alt="100%x180">
          
            <div class="card-body">
              <h4 class="card-title" style="font-family:'Proza Libre', sans-serif;">Chicken Tikka Masala</h4>
              <h6 style="font-family:'Poppins', sans-serif;" class="card-subtitle text-muted">Mughlai's, Spicy Beverages</h6>
              <p style="font-family:'Poppins', sans-serif;" class="card-text p-y-1"><i class="fa fa-inr"></i>449</p>
              
              <a style="font-family:'Poppins', sans-serif;" href="addToCartAction.jsp?id=5" class="btn btn-outline-secondary">Add To Cart</a>
            </div>
          </div>
        </div>
        
        
        
      </div>
            <br>
            <br>
      
      
      
      
      
      
      
      
    </div>
  </div> 
          
          
          
          
<%

}catch(Exception e){
	System.out.println(e);
}%>


	<%@include file="footer.jsp" %>
</body>
</html>