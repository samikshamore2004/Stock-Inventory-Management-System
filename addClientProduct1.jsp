<%-- 
    Document   : addClientProduct1
    Created on : 12 Mar, 2024, 8:50:02 AM
    Author     : Dell
--%> 
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

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
            }</style>
</head>
<body>
    <h1><font color="orange">Enter Product Details</font></h1>
<%
    String prnm = request.getParameter("productname");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/companydata", "root", "");
        PreparedStatement pst = con.prepareStatement("SELECT * FROM addproduct WHERE productname = ?");
        pst.setString(1, prnm);
        ResultSet rs = pst.executeQuery();
        
        while (rs.next()) {
%>
            <form action="dataOfAddClientProduct1.jsp">
                <table border="0">
                    <tbody>
                        <tr>
                            <td><font size="4" color="">Product name:</font></td>
                            <td><input type="text" name="eid" value="<%=rs.getString("productname")%>" /></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="">Unit:</font></td>
                            <td><input type="text" name="unit" value="<%=rs.getString("unit")%>" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="hidden" name="availablequantity1" value="<%=rs.getString("quantity")%>" /></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="">Available quantity:</font></td>
                            <td><font color="red"><input type="text" name="availablequantity" value="<%=rs.getString("quantity")%>"/></font></td>
                        </tr>
                        <tr>
                            <td><font size="4" color="">Enter Amount Of Quantity to purchase:</font></td>
                            <td><input type="text" name="quantity" value="" /></td>
                        </tr>
                         <tr>
                            <td><font size="4" color="">MRP:</font></td>
                            <td><input type="text" name="mrp" value="<%=rs.getString("mrp")%>" />Rs</td>
                        </tr>
                        <tr>
                            <td><font size="4" color="">Discount:</font></td>
                            <td><input type="text" name="discount" value="" />%</td>
                        </tr>
                         <tr>
                            <td><font size="4" color="">GST:</font></td>
                            <td><input type="text" name="gst" value="<%=rs.getString("gst")%>" />%</td>
                        </tr>
                        
                        
                        
                        
                        <!-- Other form fields -->
                    </tbody>
                </table>
                <br>
                <input type="submit" value="add">
            </form>
<%
        }
        con.close();
    } catch (Exception e) {
        out.print(e);
    }
%>
</body>
</html>