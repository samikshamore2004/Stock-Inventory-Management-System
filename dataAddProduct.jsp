<%-- 
    Document   : dataAddProduct
    Created on : 6 Mar, 2024, 7:57:32 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
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
                background-color:#ffcccc ;
                
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
<h1></h1>
       <%
            try{
        String prnm=request.getParameter("productname");
        String unit=request.getParameter("units");
        String qt=request.getParameter("quantity");
        String pcp=request.getParameter("pcos"); 
        String gst=request.getParameter("gst");
        String cp=request.getParameter("costprice");
        String mrp=request.getParameter("mrp");
        
        
           Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/companydata", "root","");
         Statement st=con.createStatement();
         String sql="insert into addproduct(productname,unit,quantity,purchasecost,gst,costprice,mrp)values('"+prnm+"','"+unit+"','"+qt+"','"+pcp+"','"+gst+"','"+cp+"','"+mrp+"')" ;  
         st.executeUpdate(sql);
         out.print("Product added successfully");
          con.close();  
            }
            catch(Exception e)
            {
                out.print(e);
            }
            %>   <br><br>
<a href="createCompany.jsp">Back to Home Page</a>
</body>
</html>