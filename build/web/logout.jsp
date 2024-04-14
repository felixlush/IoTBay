<%-- 
    Document   : logout
    Created on : 5 Apr 2024, 2:40:00 pm
    Author     : thebigmoney
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="iot.isd.model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles/main.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>
    <body>
        <div class="main-container">
            <h1>Logged Out</h1>
            <%
              session.invalidate();
            %>
            <a href="index.jsp" class="custom-button" style="margin-top: 60px;">Home</a>
    <!--        <h1>User Profile</h1>
            <table id="profile_table">
                <thead><th>Name</th><th>Email</th><th>Password</th><th>Address</th>
            </table>-->
        </div>
    </body>
</html>
