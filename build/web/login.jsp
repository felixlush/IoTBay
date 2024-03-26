<%-- 
    Document   : login
    Created on : 26 Mar 2024, 10:24:07 am
    Author     : thebigmoney
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <link rel="stylesheet" href="styles/main.css">
    </head>
    <body>
        <div class="main-container">
            <div class="form-card">
                <h2>Welcome Back!</h2>
                <form action="welcome.jsp" method="post">
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
        </div>  
    </body>
</html>
