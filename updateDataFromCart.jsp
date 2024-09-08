<%-- 
    Document   : updateDataFromCart
    Created on : 2 Apr, 2024, 10:19:29 PM
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
    String qt = request.getParameter("quantity");
    String pnm = request.getParameter("productName");
    try {
        // Establish database connection
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/companydata", "root", "");

        // Select statement for retrieving current quantity from createdata table
        String selectSql = "SELECT quantity FROM addproduct WHERE productname = ?";
        PreparedStatement selectStmt = con.prepareStatement(selectSql);
        selectStmt.setString(1, pnm);
        ResultSet rs = selectStmt.executeQuery();

        // Parse current quantity as an integer
        int currentQuantity = 0;
        if (rs.next()) {
            currentQuantity = Integer.parseInt(rs.getString("quantity"));
        }

        // Calculate new quantity
        int updatedQuantity = currentQuantity - Integer.parseInt(qt);

        // Convert updatedQuantity to String
        String updatedQuantityString = String.valueOf(updatedQuantity);

        // Update statement for updating data in createdata table
        String updateSql = "UPDATE addproduct SET quantity = ? WHERE productname = ?";
        PreparedStatement updateStmt = con.prepareStatement(updateSql);
        updateStmt.setString(1, updatedQuantityString); // Updated quantity as string
        updateStmt.setString(2, pnm);
        updateStmt.executeUpdate();

        // Close database resources
        selectStmt.close();
        updateStmt.close();
        con.close();
out.println("Updated Quantity: " + updatedQuantityString);
        out.print("Data updated successfully");
    } catch (Exception e) {
        out.print(e);
    }
%>
<br><br>

 <a href="manageQuantity.jsp">back to calculate bill</a><br><br>
             <a href="createCompany.jsp">back to home page</a>
    </center>
</body>
</html>
