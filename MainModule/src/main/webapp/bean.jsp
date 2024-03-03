<%-- 
    Document   : bean
    Created on : 09-Feb-2024, 10:12:47 PM
    Author     : amard
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/beans" prefix="b" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>JSP with Beans Example</title>
    </head>
    <body>
       <h1>JSP with Beans Example</h1>
    
    <%-- Create a UserBean instance --%>
    <b:new id="user" className="UserBean"/>

    <%-- Set properties of UserBean --%>
    <b:setProperty name="user" property="firstName" value="John"/>
    <b:setProperty name="user" property="lastName" value="Doe"/>

    <%-- Get and display properties of UserBean --%>
    <p>First Name: <c:out value="${user.firstName}"/></p>
    <p>Last Name: <c:out value="${user.lastName}"/></p>
    </body>
</html>
