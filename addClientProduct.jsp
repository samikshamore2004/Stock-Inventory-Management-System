<%-- 
    Document   : addClientProduct
    Created on : 12 Mar, 2024, 8:36:26 AM
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
                font-size: 16px;
                color: #ffffff;
            }
            body{
                background-color:#000000 ;
                
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
            }</style>
    </head>
    <body>
    <center>
        <h1><font color="orange">Add product to cart</font></h1>
        <form action="addClientProduct1.jsp">
       
        <table border="0">
   <tbody>
                <tr>
                    <td>Select product name:</td>
                    <td><select name="productname">
            <option value="pineapple">pineapple</option>
            <option value="orange">orange</option>
            <option value="mangoe">mango</option>
            <option value="banana">banana</option>
            <option value="dragonfruit">dragonfruit</option>
            <option value="watermelon">watermelon</option>
            <option value="apple">apple</option>
            <option value=""></option>
            <option value=""></option>
            <option value=""></option>
        </select></td>
                </tr>
                
            </tbody>
        </table><br><br>
        <input type="submit" value="submit" />
        </form>
    </center>
    </body>
</html>
