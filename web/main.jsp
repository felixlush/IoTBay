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
          System.out.println(user.email);
          System.out.println(user.password);
          String email = request.getParameter("email");
          String password = request.getParameter("password");
          System.out.println(email);
          System.out.println(password);
        %>
    <div class="main-container">
        <% if (user != null && user.email.equals(email) && user.password.equals(password)) { %>
            <h1>User Profile</h1>
            <table class="user-table" id="profile_table">
                <thead><th>Name</th><th>Email</th><th>Password</th><th>Address</th>
                <tr>
                    <td>${user.name}</td>
                    <td>${user.email}</td>
                    <td>${user.password}</td>
                    <td>${user.address}</td>
                </tr>
            </table>
            <a href="logout.jsp" class="custom-logout-button" style="margin-top: 60px;">Logout</a>
            <a href="index.jsp" class="custom-button" style="margin-top: 60px;">Home</a>
        <% } else { %>
            <h1>Invalid details please try again<h1>
        <% } %>
        
    </div>
    </body>
</html>

