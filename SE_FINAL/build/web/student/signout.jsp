<%-- 
    Document   : signout
    Created on : 17 Apr, 2018, 8:44:50 PM
    Author     : Pratik
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
            Cookie cookie = new Cookie ("enrollment","");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
            Cookie cookie2 = new Cookie ("username","");
            cookie.setMaxAge(0);
            response.addCookie(cookie2);
            Cookie cookie3 = new Cookie ("password","");
            cookie.setMaxAge(0);
            response.addCookie(cookie3);
            Cookie cookie4 = new Cookie ("utype","");
            cookie.setMaxAge(0);
            response.addCookie(cookie4);

            //response.sendRedirect("../test.jsp");
        %>
    </body>
</html>
