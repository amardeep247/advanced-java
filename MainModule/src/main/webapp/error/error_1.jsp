<%-- 
    Document   : error
    Created on : 09-Feb-2024, 10:04:11 PM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Error Page</title>
    </head>
    <body>
        <h1>Error Page1</h1>
    <p>An error occurred: <%= exception.getMessage() %></p>
    <p>Stack Trace:</p>
    <pre><%= exception.getStackTrace() %></pre>
    </body>
</html>
