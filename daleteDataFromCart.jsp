<%-- 
    Document   : daleteDataFromCart
    Created on : 2 Apr, 2024, 9:08:51 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete product from cart</title>
         <style>
            table{
                font-style: inherit;
                size:20px;
                color: #ffcccc;
            }
            input{
               font-style: initial;
                color:#ffffff ;
                background-color:#999999 ; 
            }
            body{
                background-color: #009999;
            }</style>
    </head>
    <body>
    <center>
         <%
             String eid = request.getParameter("passId");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/companydata", "root", "");
        String sql = "delete from cart where productname=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, eid);
        pstmt.executeUpdate();
        out.print("Data deleted successfully");
        con.close();
    } catch (Exception e) {
        out.print(e);
    }
            %>
            <br><br> <a href="manageQuantity.jsp">back to calculate bill</a><br><br> 
             <a href="createCompany.jsp">back to home page</a>
    </center>
    </body>
</html>
