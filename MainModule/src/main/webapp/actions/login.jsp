<%-- 
    Document   : login
    Created on : 17-Feb-2024, 8:25:33 PM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   boolean loginFailed = false;
   if (username != null && password != null) {
        if ("admin".equals(username) && "admin".equals(password)) {           
            request.setAttribute("username", username);
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        }else{
           loginFailed = true;
        }
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <h1>Login</h1>
    <form action="login.jsp" method="post">
        Username: <input type="text" name="username"><br>
        Password: <input type="password" name="password"><br>
        <input type="submit" value="Login">
    </form>
     
   <% if (loginFailed) { %>
        <p style="color: red;">Invalid username or password</p>
    <% } %>
</body>
</html>
