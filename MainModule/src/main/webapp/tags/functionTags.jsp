<%-- 
    Document   : functionTags
    Created on : 13-Feb-2024, 9:49:24 PM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSTL Functions Example</title>
</head>
<body>
    <h1>JSTL Functions Example</h1>

    <%-- String manipulation --%>
    <c:set var="name" value="Advanced Java"/>
    <p>Uppercase: ${fn:toUpperCase(name)}</p>
    <p>Lowercase: ${fn:toLowerCase(name)}</p>
    <p>Substring: ${fn:substring(name, 0, 4)}</p>

    <%-- Collection manipulation --%>
    <c:set var="numbers" value="${fn:split('1,2,3,4,5', ',')}"/>
    <p>Size of numbers: ${fn:length(numbers)}</p>
   
</body>
</html>
