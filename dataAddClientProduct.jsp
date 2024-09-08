<%-- 
    Document   : dataAddClientProduct
    Created on : 19 Mar, 2024, 7:35:54 AM
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
    </head>
    <body>
       
        
        <%
            try{
        String pnm=request.getParameter("productname");
        String unit=request.getParameter("units");
        String qt=request.getParameter("quantity");
        String gst=request.getParameter("gst");
        String mrp=request.getParameter("mrp"); 
        String dis=request.getParameter("discount");
      
           Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/companydata", "root","");
         Statement st=con.createStatement();
         String sql="insert into createdata()values('"+pnm+"','"+unit+"','"+qt+"','"+gst+"','"+mrp+"','"+dis+"')" ;  
         st.executeUpdate(sql);
         out.print("Product added sucessfully successfully");
          con.close();  
            }
            catch(Exception e)
            {
                out.print(e);
            }
            %>   
        
            <a href="createCompany.jsp">back to home page</a> 
        
        
    </body>
</html>
