<%-- 
    Document   : allDataAddProduct
    Created on : 19 Mar, 2024, 8:31:33 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products in company</title>
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
                background-color: #000000;
            }</style>
    </head>
    <body>
      <center>
          <h1><font color="brown">Available Products In Stock</h1>
         <%
            try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/companydata","root","");
          Statement st=con.createStatement();
          ResultSet rs=null;
          %>
       
          <table border="20">
                         
                     
                     <tbody>
                     <tr>
                         <td><font color="chocolate" size="5"><b>Product name:</b></font</td> 
                         <td><font color="chocolate" size="5"><b>Unit:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Available Quantity:</b></font</td>
                         
                         <td><font color="chocolate" size="5"><b>Purchase cost:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Cost price:</b>(Of 1 item)</font</td>
                         <td><font color="chocolate" size="5"><b>GST(%)</b></font</td>
  
                         <td><font color="chocolate" size="5"><b>MRP:</b></font</td>
                        
                        
                         
                         
                        
                         
                     </tr>
        <%
         String sql="Select * from addproduct";
          rs=st.executeQuery(sql);
          while(rs.next())
          {
            
            %>
                   
                    <tr>
                        <td><font color=""><%=rs.getString("productname")%></font></td>
                        <td><font color=""><%=rs.getString("unit")%></font></td>
                        <td><font color=""><%=rs.getString("quantity")%></font></td>
                       
                        <td><font color=""><%=rs.getString("purchasecost")%></font></td>
                        <td><font color=""><%=rs.getString("costprice")%></font></td>
                        <td><font color=""><%=rs.getString("gst")%></font></td>
                        <td><font color=""><%=rs.getString("MRP")%></font></td>
                       
                       
                        
                        
                        
                    </tr>
            
        <%    
        }
        con.close();
        }
         catch(Exception e)
          {
               out.print(e);
          }

        %>
                </tbody>
    </table><br><br>
     
    <a href="createCompany.jsp"><font size="5" color="violet">back to home page</font></a>
        
        
    </center>  
    </body>
</html>
