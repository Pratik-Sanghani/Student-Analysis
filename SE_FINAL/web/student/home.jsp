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
        <link href="../css/signin.css" rel="stylesheet">
        <link href="../css/bootstrap.css" rel="stylesheet">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body style="margin-top: -40px;">
            <nav class="navbar navbar-dark  bg-dark">
                <a class="navbar-brand" href="#"><img src="../Images/icon.png" width="30" height="30" alt="SPHP" >Student Marks Analysis</a>
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
       Cookie cookie = null;
         Cookie[] cookies = null;
         
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
            out.println("<h2> Found Cookies </h2>");
            
            try{
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
        <div class="alert alert-info" role="alert" >
        <h3 style="font-family: Comic Sans MS">Welcome Back , <%= name%></h3>
        </div>
        
        <div class="list-group">
            
        <div class="row">
            <div class="col-4">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">Display Grade history</a>
                    <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">Add Marks</a>
                    <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">Update Marks</a>
                </div>
            </div>
            <div class="col-8">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
                        <%
                        %>
                    </div>
                    <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
                        <%
                            
                        %>
                    </div>
                    <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">...</div>
                </div>
            </div>
        </div>
        </div>
        <%
            
            }
           
                   }
                   if("new".equals(user)){
                out.print("<div class='alert alert-info' role='alert' >");
                out.print("<h3>You are a new user...<a href='new_data_entry.jsp?username="+username+"'>Click me </a> to enter Your Basic Data...</h3>");
                out.print("</div>");
                }

            }catch(Exception e){out.print(e);}
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               out.print("Name : " + cookie.getName( ) + ",  ");
               out.print("Value: " + cookie.getValue( )+" <br/>");
            }
         } else {
            out.println("<h2>No cookies founds</h2>");
         }
       %> 
            
       
    </body>
</html>
