<%-- 
    Document   : setDetails
    Created on : 4 Mar, 2024, 8:14:57 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>set admin Page</title>
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
            }
           
        </style>
    </head>
    <body>
       <center><br><br><br><br>
        
             <form  action="setDetails1.jsp" >
        
        
        
                 <h1><font color="brown">Admin Details</font></h1>
        <table border="0">
            

            <tbody>
               
                <tr>
                    <td><font size="5">Set Username:</font></td>
                    <td><input type="text" name="uname" value="" required/></td>
                </tr>
                <tr>
                    <td><font size="5">Set Password:</font></td>
                    <td><input type="password" name="password" value="" required /></td>
                </tr>
            </tbody>
        </table><br><br>
        <table border="0">
           
            <tbody>
                <tr>
                    <td><input type="submit" value="submit" /></td>
                    <td><input type="reset" value="clear" /></td>
                </tr>
            </tbody>
        </table>
             </form>
    </body>
</html>
