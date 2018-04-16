<%-- 
    Document   : delete_mark
    Created on : 16 Apr, 2018, 1:52:08 PM
    Author     : Pratik
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Final Project</title>
    </head>
    <body >
        
        <%
           String sub = request.getParameter("sub");
           Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
        String q = "delete from markdata where sub=?";
        PreparedStatement pst = con.prepareStatement(q);
        pst.setString(1, sub);
        pst.executeUpdate();
        response.sendRedirect("home.jsp?user=old");
        %>
    </body>
</html>
