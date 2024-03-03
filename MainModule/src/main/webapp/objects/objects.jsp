<%-- 
    Document   : objects
    Created on : 10-Feb-2024, 2:07:52 PM
    Author     : amard
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Implicit Objects Example</title>
</head>
<body>
    
    <h1>Implicit Objects Example</h1>
    
    <%-- Using request object to access parameter --%>
    <p>Request Parameter: <%= request.getParameter("name") %></p>
    
    <%-- Using session object to access session attribute --%>
    <p>Session Attribute: <%= session.getAttribute("user") %></p>
    
    <%-- Using application object to access application attribute --%>
    <p>Application Attribute: <%= application.getAttribute("counter") %></p>
</body>
</html>
