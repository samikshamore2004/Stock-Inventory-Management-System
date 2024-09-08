<%-- 
    Document   : dataOfAddClientProduct1
    Created on : 2 Apr, 2024, 8:33:35 AM
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
       <%
           try{
       String pnm=request.getParameter("eid");
       String unit=request.getParameter("unit");
       String qt=request.getParameter("quantity");
       String mrp=request.getParameter("mrp");
       String dis=request.getParameter("discount");
       String gst=request.getParameter("gst");
       String avqt=request.getParameter("availablequantity");
       String avqt1=request.getParameter("availablequantity1");
        
       
       
            Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/companydata", "root","");
         Statement st=con.createStatement();
         String sql="insert into cart(productname,unit,quantity,mrp,discount,gst)values('"+pnm+"','"+unit+"','"+qt+"','"+mrp+"','"+dis+"','"+gst+"')" ; 
         
         st.executeUpdate(sql);
         out.print("Product added successfully");
          con.close();  
            }
            catch(Exception e)
            {
                out.print(e);
            }
            %>   
            <br><br>
            <a href="manageQuantity.jsp">click to view products</a><br><br><br>
             <a href="createCompany.jsp">back to home page</a>
     
    </body>
</html>
 