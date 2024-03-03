<%-- 
    Document   : paramAction
    Created on : 17-Feb-2024, 8:42:30 PM
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
    <h2>Welcome, <%= request.getParameter("username") %>!</h2>
    <p>Thank you for visiting.</p>
</body>
</html>
