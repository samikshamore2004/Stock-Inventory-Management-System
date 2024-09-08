<%-- 
    Document   : showCompanies
    Created on : 6 Mar, 2024, 7:23:27 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>show companies </title>
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
    <body><h1><font color="white">View Companies</font></h1>
    <%
            try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/companydata","root","");
          Statement st=con.createStatement();
          ResultSet rs=null;
          %>
       
          <table border="9">
                         
                     
                     <tbody>
                     <tr>
                        
                         <td><font color="chocolate" size="5"><b>Company name:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Add products:</b></font</td>
                         
                     </tr>
        <%
         String sql="Select * from createdata";
          rs=st.executeQuery(sql);
          while(rs.next())
          {
            
            %>
                   
                    <tr>
                        <td><font color=""><%=rs.getString("companyname")%></font></td>
                           <td><font color=""><a href="addProduct.jsp?passId=<%=rs.getString("companyname")%>"><font color="orange">click</font></a></font></td>
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
        
        
    
   
        
    </body>
</html>
