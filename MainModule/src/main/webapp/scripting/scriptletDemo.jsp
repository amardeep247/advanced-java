<%-- 
    Document   : scriptletDemo
    Created on : 11-Feb-2024, 11:31:45 AM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><h1>
       <%
String name = "Everyone";
String  course = "Scriptlet";
out.println("Hello, " + name + "! You are learning " + course + ".");
%>
        </h1>
        <p>Today's date is <%= new java.util.Date() %>.</p>

    </body>
</html>
