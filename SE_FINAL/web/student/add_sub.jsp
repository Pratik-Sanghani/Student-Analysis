<%-- 
    Document   : add_sub
    Created on : 13 Apr, 2018, 4:35:55 PM
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
               String password= request.getParameter("password");
               Cookie cookie = null;
                Cookie[] cookies = null;
                String ck_password;
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
                            for (int i = 0; i < cookies.length; i++) {
                                cookie = cookies[i];
                                if("password".equals(cookie.getName( ))){
                                        ck_password = cookie.getValue( );
                                        if(password.equals(ck_password)){
                                                %>
                                                
                                                
<script type="text/javascript">
     function configureDropDownLists(ddl1,ddl2) {
    var colours = ['Black', 'White', 'Blue'];
    var shapes = ['Square', 'Circle', 'Triangle'];
    var names = ['John', 'David', 'Sarah'];

    switch (ddl1.value) {
        case 'Colours':
            ddl2.options.length = 0;
            for (i = 0; i < colours.length; i++) {
                createOption(ddl2, colours[i], colours[i]);
            }
            break;
        case 'Shapes':
            ddl2.options.length = 0; 
        for (i = 0; i < shapes.length; i++) {
            createOption(ddl2, shapes[i], shapes[i]);
            }
            break;
        case 'Names':
            ddl2.options.length = 0;
            for (i = 0; i < names.length; i++) {
                createOption(ddl2, names[i], names[i]);
            }
            break;
            default:
                ddl2.options.length = 0;
            break;
    }

}

    function createOption(ddl, text, value) {
        var opt = document.createElement('option');
        opt.value = value;
        opt.text = text;
        ddl.options.add(opt);
    }
</script>

<form class="form-signin" action="add_sub.jsp" method="post" align="center" >
        <h2 class="form-signin-heading" align="center">Please Sign In </h2>
        <div align="center" >
        <select id="ddl" onchange="configureDropDownLists(this,document.getElementById('ddl2'))" class="btn btn-light btn-outline-dark dropdown-toggle"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" name="dd1" required>
            <option value=""></option>
            <option value="Colours">Colors</option>
            <option value="Shapes">Shapes</option>
            <option value="Names">Names</option>
        </select>

        <select id="ddl2" class="btn btn-light btn-outline-dark dropdown-toggle"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" name="ddl2" required>
        </select>
        </div>
        <br/>
        <label for="inputusername" class="sr-only">Username</label>
        <input type="text" id="inputusername" class="form-control" placeholder="UserName" name="username" required autofocus>
        <br/>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required>
          
        <button class="btn btn-lg btn-success btn-block " type="submit">Sign in</button>
        <br/>
</form>


                                                
                                                <%
                                        }
                                        else{out.println("Wrong");}
                                }
                            }
                            
                            
         }
         else{out.print("Please Log in first...");}
            %>
    </body>
</html>
