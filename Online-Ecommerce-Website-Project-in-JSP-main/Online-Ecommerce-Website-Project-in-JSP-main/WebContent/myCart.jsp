<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>My Cart</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body style="background-image: url('css/transformed.jpeg');">>
    <div class="container mt-3">
        
        <%
        String msg = request.getParameter("msg");
        if ("notPossible".equals(msg)) {
        %>
        <div class="alert alert-warning">
            There is only one Quantity! So click on remove!
        </div>
        <% } %>
        <% if ("inc".equals(msg)) { %>
        <div class="alert alert-success">
            Quantity Increased Successfully!
        </div>
        <% } %>
        <% if ("dec".equals(msg)) { %>
        <div class="alert alert-success">
            Quantity Decreased Successfully!
        </div>
        <% } %>
        <% if ("removed".equals(msg)) { %>
        <div class="alert alert-success">
            Product Successfully Removed!
        </div>
        <% } %>
        <h2 style="font-family:'Proza Libre', sans-serif;text-align:center;color:rgb(112, 112, 112);"">Checkout Products</h2>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">S.No</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Sub Total</th>
                    <th scope="col">Remove</th>
                </tr>
            </thead>
            <tbody>
                <%
                int total = 0;
                int sno = 0;
                try {
                    ConnectionProvider conProvider = new ConnectionProvider();
                    Connection con = conProvider.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='" + email + "' and address is NULL");
                    while (rs1.next()) {
                        total = rs1.getInt(1);
                    }

                    ResultSet rs = st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email='" + email + "' and cart.address is NULL");
                    while (rs.next()) {
                        sno = sno + 1;
                %>
                <tr>
                    <td><%= sno %></td>
                    <td>Mutton ghost Biryani</td>
                    <td><i class="fa fa-inr"></i>449</td>
                    <td>
                        <a href="incDecQuantityAction.jsp?id=<%= rs.getString(1) %>&quantity=dec">
                            <i class='fas fa-minus' style="color:black"></i>
                        </a>
                        <%= rs.getString(8) %>
                        <a href="incDecQuantityAction.jsp?id=<%= rs.getString(1) %>&quantity=inc">
                            <i class='fas fa-plus' style="color:black"></i>
                        </a>
                    </td>
                    <td><i class="fa fa-inr"></i> 449</td>
                    <td>
                        <a href="removeFromCart.jsp?id=<%= rs.getString(1) %>">
                            <i class="fas fa-times" style="color:red"></i>
                        </a>
                    </td>
                </tr>
                <%
                    }
                } catch (Exception e) {
                %>
                </tbody>
            </table>
            <% } %>

            <div class="mt-3">
                <p class="md-5" style="font-size:25px;color:rgb(112, 112, 112);"">Total: <i class="fa fa-inr"></i><% out.println(892); %></p>
                <% if (total > 0) { %>
                <button class="btn btn-secondary float-right" >
                    <a class="float-right" href="addressPaymentForOrder.jsp" style="color:white;text-decoration:none;">Proceed to order</a>
                </button>
                <% } %>
            </div>
        </div>
        <script src="path/to/bootstrap.min.js"></script>
    </body>
</html>