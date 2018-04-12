<%-- 
    Document   : home
    Created on : 11 Apr, 2018, 11:33:51 PM
    Author     : Pratik
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Final Project</title>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'  crossorigin='anonymous'>
        <script src='https://code.jquery.com/jquery-3.2.1.slim.min.js' crossorigin='anonymous'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js'  crossorigin='anonymous'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'  crossorigin='anonymous'></script>           
        <link href="css/signin.css" rel="stylesheet">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
            <nav class="navbar navbar-dark  bg-dark">
            <a class="navbar-brand" href="#"><img src="Images/my.png" width="30" height="30" alt="SPHP" >Student Marks Analysis</a>
            <ul class="nav nav-tabs">
            <li class="nav-item">
            <a class="nav-link active" href="#">Home</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="signout.jsp">Sign Out</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="about.html">About</a>
            </li>
            </ul>
            </nav>
       
        <%
           String username = request.getParameter("username");
           String user = request.getParameter("user");
          Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
        String q = "select * from studentdata where username=?";
        PreparedStatement pst = con.prepareStatement(q);
        pst.setString(1,username);
        ResultSet rs = pst.executeQuery();
        while(rs.next()){
            String name=rs.getString("name");
        
           if("old".equals(user)){
        %>
        <h3 style="font-family: Comic Sans MS">Welcome Back <%= name%></h3>
        <%
            }
           }
           if("new".equals(user)){
                out.print("<h3 style='font-family: Comic Sans MS'>You are a new user...<a href='new_data_entry.jsp?username="+username+"'>Click me </a> to enter Your Basic Data...</h3>");
           
                }
              
        %>
    </body>
</html>
