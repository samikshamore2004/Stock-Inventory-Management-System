<%-- 
    Document   : setDetails1
    Created on : 4 Mar, 2024, 8:16:12 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <form name="myfile" action="adminLogin.jsp" onsubmit="return validate()">
        
           <%
        
          String un=request.getParameter("uname");
          String pass=request.getParameter("password");
          session.setAttribute("usern",un);  
          session.setAttribute("pa", pass);
            
            %>
           
            <script>
            function validate()
            {
               
                    alert("Admin Details set sucessfully");
              
            }
            </script>
            <input type="submit" value="Click to login " />
        </form></center>
    </body>
</html>
 