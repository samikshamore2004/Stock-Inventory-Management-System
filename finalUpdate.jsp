<%-- 
    Document   : finalUpdate
    Created on : 6 Mar, 2024, 7:30:58 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Final update</title>
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
        String id1=request.getParameter("cn1");
         String id2=request.getParameter("cn");
          String t=request.getParameter("tr");
          String ot=request.getParameter("otr");
          
           String s=request.getParameter("state");
            String dis=request.getParameter("district");
           String ad=request.getParameter("add");
           String c=request.getParameter("ct");
            String m1=request.getParameter("mb1");
             String m2=request.getParameter("mb2");
             String on=request.getParameter("onm");
              String g=request.getParameter("gen");
               String eid=request.getParameter("eid");
           PreparedStatement ps=null;
           try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/companydata","root","");
              String sql="UPDATE createdata SET trade=?, othertrade=?, companyname=?,  state=?, district=?, address=?, city=?, mob1=?, mob2=?, ownername=?, gender=?, emailid=? WHERE companyname=?";
              ps=con.prepareStatement(sql);
            ps.setString(1, t);
ps.setString(2, ot);
ps.setString(3, id2);

ps.setString(4, s);
ps.setString(5, dis);
ps.setString(6, ad);
ps.setString(7, c);
ps.setString(8, m1);
ps.setString(9, m2);
ps.setString(10, on);
ps.setString(11, g);
ps.setString(12, eid);
ps.setString(13, id1);
              int i=ps.executeUpdate();
              if(i>0)
              {
                  out.print("Details of company record update successfully");
              }
              else
              {
                  out.print("Problem in updating record!");
              }
              con.close();
              
           }
           catch(Exception e)
           {
               out.print(e);
           }
        %>
        <br><br>
        <a href="createCompany.jsp"><font size="5">Log out</font></a>
    </center>
    </body>
</html>
