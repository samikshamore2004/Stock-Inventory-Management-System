<%-- 
    Document   : adminLogin
    Created on : 4 Mar, 2024, 8:03:44 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin login Page</title>
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
        <form action="adminLogin1.jsp">
       
            <h1><font color="white">Admin Login</font></h1>
        <table border="9">
               
                <tbody>
                  
                    <tr>
                        <td><b><font color="red">Enter Username:</font></b></td>
                        <td><input type="text" name="usname" value="" required/></td>
                    </tr>
                    <tr>
                        <td><b><font color="red">Enter Password</font></b></td>
                        <td><input type="password" name="pw" value="" required/></td>
                    </tr>
                </tbody>
            </table><br><br>
           

            
        <%
         String n1=(String)session.getAttribute("n");
         String u1=(String)session.getAttribute("usern");
         String p1=(String)session.getAttribute("pa");
         session.setAttribute("n2", n1);
         session.setAttribute("u2",u1 );
         session.setAttribute("p2",p1 );
            %>
            <input type="submit" value="submit" />
        </form>
          
    </center>
    </body>
</html>
