<%-- 
    Document   : new_data_entry
    Created on : 12 Apr, 2018, 3:38:59 PM
    Author     : Pratik
--%>

<%@page import="java.math.BigInteger"%>
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
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body style="margin-top: -40px;">
            <nav class="navbar navbar-dark  bg-dark">
            <a class="navbar-brand" href="#"><img src="../Images/icon.png" width="30" height="30" alt="SPHP" >Student Marks Analysis</a>
            <ul class="nav nav-tabs">
            <li class="nav-item">
            <a class="nav-link active" href="home.jsp">Home</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="signout.jsp">Sign Out</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="about.html">About</a>
            </li>
            </ul>
            </nav>
        
        <form class="form-signin" action="new_data_entry.jsp" method="post" align="center" >
        <h2 class="form-signin-heading" align="center">Please Enter your Details...</h2><br/>
        <%
            String username = request.getParameter("username");

       out.println(" <input type='hidden' id='inputuname' class='form-control' value='"+username+"' name='username' required>");
            %>
        <br/>
        <input type="number" id="inputno" class="form-control" placeholder="Enrollment no" name="enrollment" required autofocus>
        <br/>
        <input type="text" id="inputname" class="form-control" placeholder="Name" name="name" required>
        <br/>
        <input type="number" id="inputsem" class="form-control" placeholder="Semester" name="sem" required>
        <br/>
        <input type="text" id="inputbranch" class="form-control" placeholder="Branch" name="branch" required>
        <br/>
        <input type="number" id="inputgyear" class="form-control" placeholder="Year of Graduation" name="gyear" required>
         <br/>
        <button class="btn btn-lg btn-success btn-block " type="submit">Update</button>
    </form>        
        
            <%
        try{
            Cookie cookie_enrollment = new Cookie("enrollment",request.getParameter("enrollment"));
            cookie_enrollment.setMaxAge(60*60);
            response.addCookie(cookie_enrollment);
          Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
        String q = "insert into studentdata values(?,?,?,?,?,?)";
        PreparedStatement pst = con.prepareStatement(q);
        pst.setString(1,username);
        pst.setString(2,request.getParameter("enrollment"));
        pst.setString(3,request.getParameter("name"));
        pst.setInt(4,Integer.parseInt(request.getParameter("sem")));
        pst.setString(5,request.getParameter("branch"));
        pst.setInt(6,Integer.parseInt(request.getParameter("gyear")));
        pst.executeUpdate();
        response.sendRedirect("home.jsp?user=old&username="+username);
        }catch(Exception e){out.print(e);}
            %>
       
    </body>
</html>
