<%-- 
    Document   : createCompany
    Created on : 4 Mar, 2024, 8:09:25 PM
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
                text-align: left;
                font-family: Arial,animation-play-state;
                color:hwb(0 100% 0% / 0.1);
                size: 16px;
                line-height: 1.5em;
                background-color: #003333;
            }
            body{
                background-color: #000000;
            }
            a{
                font-family: Arial,animation-play-state;
                color:#d19e9e;
              
            }
            p{
                background-color: #009999;
            }
            
            </style>
    </head>
    <body>
      <%  String upqt2=(String)session.getAttribute("upqt1");
          session.setAttribute("upqt1",upqt2);
      %>
         <table border="25">
           
            </thead>
            <tbody>
                <tr><td><h1>For admin </h1></td>
                    <td><a href="createCompany1.jsp">Create Company </a></td>
                <td><a href="showCompanies.jsp">View Company </a></td>
                <td><a href="addProduct.jsp">Add product </a></td>
                <td><a href="allDataAddProduct.jsp">View product quantity </a></td>
                <td><a href="allDataCreateCompany.jsp">Update company details </a></td>
                <td><h1>For billing purpose <h1></td>
                 <td><a href="addClientProduct.jsp">select product</a></td>
                 <td><a href="manageQuantity.jsp">view products in cart</a></td>
                </tr>
            </tbody>
           
            <p> <font size="28" color="orange"><i>Hey Stock inventor welcome here!</i></font></p>
    </body>
</html>
