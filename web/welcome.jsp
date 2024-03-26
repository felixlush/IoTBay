<%-- 
    Document   : welcome
    Created on : 26 Mar 2024, 10:34:47 am
    Author     : thebigmoney
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    boolean isRegister = request.getParameter("firstName") != null;
    
    String fname = "", lname = "", address = "", postcode = "";
    
    if (isRegister){
        fname = request.getParameter("firstName");
        lname = request.getParameter("lastName");
        address = request.getParameter("address");
        postcode = request.getParameter("postcode");   
    }
%>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        <link rel="stylesheet" href="styles/main.css">
    </head>
    <body>
        <div class="main-container">
            <img src="https://i.pinimg.com/736x/33/4e/06/334e063ae9f247704b37549b4b0f47d1.jpg" width="500" alt="IoT Logo"/>
            <div class="details-container">
                <%
                    if (isRegister){ %>
                        <div>
                            <p>Thanks for registering <%= fname%></p>
                            <p>Address: <%= address %></p>
                            <p>Postcode: <%= postcode %></p>
                            <p>Email: <%= email %></p>
                        </div>
                    <% } else { %>
                        <div>
                            <p>Welcome back: <%= email%>
                        </div>
                <%}%>
            </div>
            <div>
                <a href="index.jsp" class="custom-logout-button" style="margin-top: 60px;">Logout</a>
            </div>
        </div>
    </body>
</html>
