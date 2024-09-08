<%-- 
    Document   : editCompanyData
    Created on : 6 Mar, 2024, 7:12:54 AM
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
                background-color: #000000;
            }</style>
    </head>
    <body>
    <center>
        
           <%
        
        String eid=request.getParameter("passId");
        %>
         <h1><font color="orange"> Update Data</font></h1>
    <%
            try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/companydata","root","");
          Statement st=con.createStatement();
         
        
         
          
          String sql = "SELECT * FROM createdata WHERE companyname=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, eid);
ResultSet rs = pstmt.executeQuery();
          while(rs.next())
          {
            
            %>
            <form action="finalUpdate.jsp">
             
                <table border="0">
                    
                    <tbody>
                        <tr>
                            <td></td>
                            <td><input type="hidden" name="cn1" value="<%=rs.getString("companyname")%>" /></td>
                        </tr>
                          <tr>
                              <td><font size="4" color=""><b>Company Name :</b></font></td>
                            <td><input type="text" name="cn" value="<%=rs.getString("companyname")%>" required/></td>
                        </tr>
                        <tr>
                            <td><font size="4" color=""><b>Trade :</b></font><input type="text" name="tr" value="<%=rs.getString("trade")%>" required/></td>
                            <td><font size="4" color=""><b> Other Trade :</b></font><input type="text" name="otr" value="<%=rs.getString("othertrade")%>" /></td>
                        </tr>
                        <tr>
                            <td><font size="4" color=""><b>State :</b></font></td>
                            <td><input type="text" name="state" value="<%=rs.getString("state")%>" required/></td>
                        </tr>
                        <tr>
                            <td><font size="4" color=""><b>District :</b></font></td>
                            <td><input type="text" name="district" value="<%=rs.getString("district")%>" required/></td>
                        </tr>
                        <tr>
                            <td><font size="4" color=""><b>Address:</b></font></td>
                            <td><input type="text" name="add" value="<%=rs.getString("address")%>" required/></td>
                        </tr>
                        <tr>
                            <td><font size="4" color=""><b>City :</b></font></td>
                            <td><input type="text" name="ct" value="<%=rs.getString("city")%>" required /></td>
                        </tr>
                        <tr>
                            <td><font size="4" color=""><b>Mobile No :<input type="text" name="mb1" value="<%=rs.getString("mob1")%>" required/></b></font></td>
                            <td><font size="4" color=""><b>Mobile No :<input type="text" name="mb2" value="<%=rs.getString("mob2")%>" required/></b></font></td>
                        </tr>
                         <tr>
                             <td><font size="4" color="">Name of owner :</b></font></td>
                            <td><input type="text" name="onm" value="<%=rs.getString("ownername")%>" required/></td>
                        </tr>
                          <tr>
                             <td><font size="4" color="">Gender :</b></font></td>
                            <td><input type="text" name="gen" value="<%=rs.getString("gender")%>" required/></td>
                        </tr>
                          <tr>
                             <td><font size="4" color="">Email ID :</b></font></td>
                            <td><input type="text" name="eid" value="<%=rs.getString("emailid")%>" required/></td>
                        </tr>
                        
                    </tbody>
                </table><br>
                <input type="submit" value="update">

           </form>  
             <%    
        }        
       %>
        </tbody>
    </table>
          <%
        con.close();
        }
         catch(Exception e)
          {
               out.print(e);
          }

        %>
               <br><br>
     
</center>   
    </body>
</html>
