<%-- 
    Document   : allDataCreateCompany
    Created on : 6 Mar, 2024, 5:59:23 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details of company</title>
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
    <body><center>
        <h1><font color="white">Owner's Details</font></h1>
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
                         <td><font color="chocolate" size="5"><b>Trade:</b></font</td> 
                         <td><font color="chocolate" size="5"><b>Other trade:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Company name:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Type</b></font</td>
                         <td><font color="chocolate" size="5"><b>State:</b></font</td>
                         <td><font color="chocolate" size="5"><b>District.:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Address:</b></font</td>
                         <td><font color="chocolate" size="5"><b>City:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Mobile No.(contact):</b></font</td>
                         <td><font color="chocolate" size="5"><b>Mobile No.(Message):</b></font</td>
                         <td><font color="chocolate" size="5"><b>Owner name:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Gender</b></font</td>
                         <td><font color="chocolate" size="5"><b>Email Id:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Action:</b></font</td>
                         <td><font color="chocolate" size="5"><b>Action</b></font</td>
                         
                         
                         
                        
                         
                     </tr>
        <%
         String sql="Select * from createdata";
          rs=st.executeQuery(sql);
          while(rs.next())
          {
            
            %>
                   
                    <tr>
                        <td><font color=""><%=rs.getString("trade")%></font></td>
                        <td><font color=""><%=rs.getString("othertrade")%></font></td>
                        <td><font color=""><%=rs.getString("companyname")%></font></td>
                        <td><font color=""><%=rs.getString("type")%></font></td>
                        <td><font color=""><%=rs.getString("state")%></font></td>
                        <td><font color=""><%=rs.getString("district")%></font></td>
                        <td><font color=""><%=rs.getString("address")%></font></td>
                        <td><font color=""><%=rs.getString("city")%></font></td>
                        <td><font color=""><%=rs.getString("mob1")%></font></td>
                        <td><font color=""><%=rs.getString("mob2")%></font></td>
                        <td><font color=""><%=rs.getString("ownername")%></font></td>
                        <td><font color=""><%=rs.getString("gender")%></font></td>
                        <td><font color=""><%=rs.getString("emailid")%></font></td>
                        
                        <td><font color=""><a href="editCompanyData.jsp?passId=<%=rs.getString("companyname")%>"><font color="">Update</font></a></font></td>
                        <td><font color=""><a href="deleteData.jsp?passId=<%=rs.getString("companyname")%>"><font color="">Delete</font></a></font></td>
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
