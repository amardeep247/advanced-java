<%-- 
    Document   : welcome
    Created on : 17-Feb-2024, 8:28:03 PM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome, <%= request.getAttribute("username") %>! <a href="login.jsp">Logout</a></h1>
    <h2>This is an example of forward action!</h2>
</body>
</html>
