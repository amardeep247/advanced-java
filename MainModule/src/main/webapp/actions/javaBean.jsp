<%-- 
    Document   : javaBean
    Created on : 10-Feb-2024, 2:27:09 PM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="edu.ak.learning.User" %>

<jsp:useBean id="user" class="edu.ak.learning.User" scope="session" />
<jsp:setProperty name="user" property="username" value="ABC" />
<jsp:setProperty name="user" property="email" value="abc@gmail.com" />

<html>
<head>
    <title>Java Bean Example</title>
</head>
<body>
    <h1>User Information</h1>
    <p>Username: <jsp:getProperty name="user" property="username" /></p>
    <p>Email: <jsp:getProperty name="user" property="email" /></p>
</body>
</html>