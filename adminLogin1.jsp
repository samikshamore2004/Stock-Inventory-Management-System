<%-- 
    Document   : adminLogin1
    Created on : 4 Mar, 2024, 8:06:13 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        
         String unm=request.getParameter("usname");
         String pa=request.getParameter("pw");
         String us=(String)session.getAttribute("u2");
         String pass=(String)session.getAttribute("p2");
            if(unm.equalsIgnoreCase(us) && pa.equals(pass))
            {
                response.sendRedirect("createCompany.jsp");
            }
            else
            {
                response.sendRedirect("Errorpage.jsp");
            }
            
            %>
    </body>
</html>
