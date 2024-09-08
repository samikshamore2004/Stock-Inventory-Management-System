<%-- 
    Document   : dataCreateCompany
    Created on : 4 Mar, 2024, 8:22:17 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail submission result</title>
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
          <%
            try{
        String tr=request.getParameter("trade");
        String cn=request.getParameter("cname");
        String otr=request.getParameter("otrade");
        String sb=request.getParameter("type");
        String st1=request.getParameter("state"); 
        String dis=request.getParameter("district");
        String add=request.getParameter("address");
        String ct=request.getParameter("city");
        String m1=request.getParameter("mob1");
        String m2=request.getParameter("mob2");
        String on=request.getParameter("ownername");
        String gen=request.getParameter("gender");
        String eid=request.getParameter("emailid");
        
           Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/companydata", "root","");
         Statement st=con.createStatement();
         String sql="insert into createdata(trade,othertrade,companyname,type,state,district,address,city,mob1,mob2,ownername,gender,emailid)values('"+tr+"','"+otr+"','"+cn+"','"+sb+"','"+st1+"','"+dis+"','"+add+"','"+ct+"','"+m1+"','"+m2+"','"+on+"','"+gen+"','"+eid+"')" ;  
         st.executeUpdate(sql);
         out.print("Company created successfully");
          con.close();  
            }
            catch(Exception e)
            {
                out.print(e);
            }
            %>   
            <br><br>
            <a href="setDetails.jsp">click to set admin</a>
        
    </body>
</html>
