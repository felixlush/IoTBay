<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="iot.isd.model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
        <link rel="stylesheet" href="styles/main.css">
    </head>
    <body>
        <%
          User user = (User)session.getAttribute("user");
          String email = request.getParameter("email");
          String password = request.getParameter("password");
        %>
    <div class="main-container">
        <% if (user.email.equals(email) && user.password.equals(password) || user.loggedin == true) {
            user.loggedin = true;
        %>
        <h2>User Profile</h2>
        <table class="user-table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${user.name}</td>
                    <td>${user.email}</td>
                    <td>${user.password}</td>
                    <td>${user.address}</td>
                </tr>
            </tbody>
        </table>
        <a href="index.jsp" class="custom-button" style="margin-top: 60px;">Home</a>
        <a href="logout.jsp" class="custom-logout-button" style="margin-top: 60px;">Logout</a>
    
        <% } else { %>
            <h1>Invalid details please try again<h1>
        <% } %>   
    </div>
    </body>
</html>

