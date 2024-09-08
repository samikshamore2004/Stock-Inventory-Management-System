<%-- 
    Document   : manageQuantity
    Created on : 12 Mar, 2024, 8:57:12 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
     <style>
            table{
                font-size: 16px;
                color: #ffffff;
            }
            body{
                background-color:#000000 ;
                
            }
            input{
                font-size:15px ;
                color: #ffffff;
                background-color: #666666;
            }
            textArea{
                font-size:20px ;
                color: #ffffff;
                background-color:#666666 ;
            }
            select{
                font-size:15px ;
                color: #ffffff;
                background-color: #666666; 
            }
            
        </style>
</head>
<body>
<center>
    <h1><font color="white">Products in cart</font></h1>
<%
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/companydata", "root", "");
        Statement st = con.createStatement();
        ResultSet rs = null;
        double totalamount=0;
    %>

    <table border="9">
        <tbody>
            <tr>
                <td><font color="chocolate" size="5"><b>Product name:</b></font></td>
                <td><font color="chocolate" size="5"><b>Unit:</b></font></td>
                <td><font color="chocolate" size="5"><b>Quantity:</b></font></td>
                <td><font color="chocolate" size="5"><b>GST(%):</b></font></td>
                <td><font color="chocolate" size="5"><b>MRP:</b></font></td>
                <td><font color="chocolate" size="5"><b>Discount:</b></font></td>
                <td><font color="chocolate" size="5"><b>Price:</b></font></td>
                 <td><font color="chocolate" size="5"><b>GST(Rs):</b></font></td>
                 <td><font color="chocolate" size="5"><b>Total price:</b></font></td>
                <td><font color="chocolate" size="5"><b>Action:</b></font></td>
                <td><font color="chocolate" size="5"><b>Action:</b></font></td>
            </tr>
            <% 
            String sql = "Select * from cart";
            rs = st.executeQuery(sql);
            while (rs.next()) {
                double mrp = Double.parseDouble(rs.getString("mrp"));
                double gst = Double.parseDouble(rs.getString("gst"));
                int quantity = Integer.parseInt(rs.getString("quantity"));
                double totalPrice = mrp * quantity;
               double gstprice=(gst/100)*totalPrice;
               double totalprice1=gstprice+totalPrice;
               totalamount = totalamount + totalprice1;
            %>
            <tr>
                <td><font color=""><%=rs.getString("productname")%></font></td>
                <td><font color=""><%=rs.getString("unit")%></font></td>
                <td><font color=""><%=rs.getString("quantity")%></font></td>
                <td><font color=""><%=rs.getString("gst")%></font></td>
                <td><font color=""><%=rs.getString("mrp")%></font></td>
                <td><font color=""><%=rs.getString("discount")%></font></td>
                <td><font color=""><%=totalPrice%></font></td>
                <td><font color=""><%=gstprice%></font></td>
                 <td><font color=""><%=totalprice1%></font></td>
                <td><font color=""><a href="daleteDataFromCart.jsp?passId=<%=rs.getString("productname")%>">Delete</a></font></td>
                <td>
    <font color="">
        <a href="updateDataFromCart.jsp?quantity=<%= rs.getString("quantity") %>&productName=<%= rs.getString("productname") %>">Update</a>
    </font>
</td>
            </tr>
        
  
            <tr><td>Total Amount:<%=totalamount%></td></tr>
               
            <% 
                }
            con.close();
        } catch(Exception e) {
            out.print(e);
        }
        %>
          </tbody>
</table>

          <br><br>
<input type="button" value="print bill" onclick="window.print()"/><br><br>
<a href="addClientProduct.jsp"><font size="5">Add more products</font></a><br><br>
<a href="createCompany.jsp"><font size="5">Back to home page</font></a>
</center>
</body>
</html>