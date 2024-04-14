<%-- 
    Document   : login
    Created on : 26 Mar 2024, 10:24:07 am
    Author     : thebigmoney
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="iot.isd.model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <link rel="stylesheet" href="styles/main.css">
        <% User user = (User)session.getAttribute("user"); %>
    </head>
    <body>
        <div class="main-container">
            <% if (user != null) { %>
                <div class="form-card">
                    <h2>Login</h2>
                    <form action="main.jsp" method="post">
                        <div class="input-group">
                            <label for="email">Email Address:</label> <br>
                            <input type=text" id="email" name="email"> <br>
                        </div>
                        <div class="input-group">
                            <label for="pwd">Password:</label><br>
                            <input type="password" id="pwd" name="password"> <br>
                        </div>
                        <input type="submit" value="Submit"><br>
                    </form>
                </div>
            <% } else { %>
                <h1>No users saved please register account</h1>
                <a href="register.jsp" class="custom-button" style="margin-top: 60px;">Register</a>
                <a href="index.jsp" class="custom-button" style="margin-top: 60px;">Home</a>
             <% }   %>
        </div>  
    </body>
</html>
