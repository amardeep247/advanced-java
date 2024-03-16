<%-- 
    Document   : formatTags
    Created on : 13-Feb-2024, 9:37:17 PM
    Author     : amard
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Formatting Tags Example</title>
</head>
<body>
    <h1>Formatting Tags Example</h1>
    <%
        request.setAttribute("now", new Date());
        request.setAttribute("salary", 5000);
      
     %>
    <%-- Format Date --%>
    <p>Formatted Date: <fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/></p>

    <%-- Format Number --%>
    <p>Formatted Number: <fmt:formatNumber value="${salary}" type="currency"/></p>

    <%-- Set Locale --%>
    <fmt:setLocale value="en_US"/>
    <p>Current Locale: <fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></p>

   
</body>
</html>
