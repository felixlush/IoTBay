<%-- 
    Document   : register
    Created on : 26 Mar 2024, 10:24:13 am
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
                <h2>Register:</h2>
                <form action="welcome.jsp" method="post">
                    <p style="font-style: italic">Please fill in the below details to register for an account</p>
                    <div class="form-group">
                        <div class="input-group">
                            <label for="name">Name:</label>
                            <input type=text" id="fname" name="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <label for="address">Address:</label>
                            <input type=text" id="address" name="address">
                        </div>
                    </div>
                    <div class="input-group">
                        <label for="email">Email Address:</label> 
                        <input type=text" id="email" name="email">
                    </div>
                    
                    <br>
                    
                    <div class="input-group">
                        <label for="pwd">Password:</label>
                        <input type="password" id="password" name="password">
                    </div>
                    
                    <div class="form-group">    
                        <input type="submit" value="Submit" style="margin-top: 20px;">
                    </div>
                </form>
            </div>
        </div>  
    </body>
</html>
