<%-- 
    Document   : teacher_home
    Created on : Apr 18, 2018, 5:39:57 PM
    Author     : JAYRAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Teacher Dashboard </title>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'  crossorigin='anonymous'>
        <script src='https://code.jquery.com/jquery-3.2.1.slim.min.js' crossorigin='anonymous'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js'  crossorigin='anonymous'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'  crossorigin='anonymous'></script>           
        <link href="../css/signin.css" rel="stylesheet">
        <link href="../css/bootstrap.css" rel="stylesheet">
        <link href="../css/hr_tag.css" rel="stylesheet">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
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
            String username = null;
            String user = request.getParameter("user");
            if( cookies != null ) 
            {
                String ck_password;
                for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
                if("password".equals(cookie.getName( )))
                {
                    ck_password = cookie.getValue( );}
                    if("username".equals(cookie.getName()))
                    {
                        username = cookie.getValue();
                    }
                }
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
                PreparedStatement pst1 = con.prepareStatement("select * from studentdata");
                ResultSet rs1= pst1.executeQuery();
                String q = "select * from profdata where username=?";
                PreparedStatement pst = con.prepareStatement(q);
                pst.setString(1,username);
                ResultSet rs = pst.executeQuery();                
                %>
           
                <%
                while(rs.next())
                {
                    String name=rs.getString("name");
                    %>
                    <div class="alert alert-info" role="alert" >
                        <h3>Welcome Back <%= name%></h3>
                    </div>
                    <%
                    while(rs1.next())
                    {
                        
                        String enrollment = rs1.getString("enrollment");
                        if("old".equals(user))
                        {
        %>
                
            <div class="list-group">   
            <div  class="row">
                <div align="center" class="col-12" style="margin-left: 275px">
                <div  class="tab-content" id="nav-tabContent">
                    <div  class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
                        <div class="alert alert-info" role="alert" >
                                <h3>Enrollment no. <%= enrollment %> </h3>
                            </div>
                        <%
                            Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
                            for (int i=1;i<9;i++){
                            try
                            {
                                String q2="select * from markdata where enrollment="+enrollment +" and sem="+i;
                                PreparedStatement pst2 = con2.prepareStatement(q2);
                                ResultSet rs2 = pst2.executeQuery();
                        %>
        
                        <table class="table">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">Semester_<%= i %></th>
                                    <th scope="col">Subject</th>
                                    <th scope="col">Grade</th>
                                </tr>
                            </thead>
                        <tbody>
                        <%
                            int j=1;
                            while(rs2.next())
                            {
                        %>
                        <tr>
                            <th scope="row"><%= j %></th>
                            <td><%= rs2.getString("sub")%></td>
                            <td><%= rs2.getString("grade")%></td>
                            </tr>
                        <%
                                j++;
                            }
                        %>
                        <hr class="style18">
                        </tbody>
                        </table>
                        <%
                            out.print("<br>");
                            }catch(Exception e){out.print(e);}}
                        %>
                        <hr class="style13" style="color: red;">
                        </div>         
                   </div>
                </div>
                        
            </div>
        </div>
        <%
            
                    }
                   }
                }
                   if("new".equals(user)){
                out.print("<div class='alert alert-info' role='alert' >");
                out.print("<h3>You are a new user...<a href='new_data_entry.jsp?username="+username+"'>Click me </a> to enter Your Basic Data...</h3>");
                out.print("</div>");
                }

            }catch(Exception e){out.print(e);}  
         } else {
            out.println("<h2>No cookies founds</h2>");
         }
       %> 
    </body>
</html>
