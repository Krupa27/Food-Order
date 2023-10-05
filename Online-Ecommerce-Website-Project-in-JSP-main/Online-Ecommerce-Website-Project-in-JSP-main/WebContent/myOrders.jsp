<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<title>Home</title>
</head>
<body>
    <div class="container mt-5">
        <div class="text-center" style="color: white; font-size: 30px;">My Orders <i class="fas fa-elementor"></i></div>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">S.No</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Category</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Sub Total</th>
                    <th scope="col">Order Date</th>
                    <th scope="col">Expected Delivery Date</th>
                    <th scope="col">Payment Method</th>
                    <th scope="col">Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                int sno = 0;
                try {
                    ConnectionProvider conProvider = new ConnectionProvider();
                    Connection con = conProvider.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.email='" + email + "' and cart.orderDate is not NULL");
                    while (rs.next()) {
                        sno = sno + 1;
                %>
                <tr>
                    <td><%= sno %></td>
                    <td><%= rs.getString(17) %></td>
                    <td><%= rs.getString(18) %></td>
                    <td><i class="fa fa-inr"></i> <%= rs.getString(19) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><i class="fa fa-inr"></i> <%= rs.getString(5) %></td>
                    <td><%= rs.getString(11) %></td>
                    <td><%= rs.getString(12) %></td>
                    <td><%= rs.getString(13) %></td>
                    <td><%= rs.getString(15) %></td>
                </tr>
                <%
                    }
                } catch (Exception e) {
                    System.out.println(e);
                }
                %>
            </tbody>
        </table>
    </div>
    <script src="path/to/bootstrap.min.js"></script>
</body>
</html>
