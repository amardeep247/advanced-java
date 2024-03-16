<%-- 
    Document   : coreTags
    Created on : 13-Feb-2024, 9:12:31 PM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL Core Tags Example</title>
</head>
<body>
    <h1>JSTL Core Tags Example</h1>

    
    <%
    java.util.List<String> courses = new java.util.ArrayList<>();
    courses.add("Java");
    courses.add("Python");
    courses.add("AWS");
    courses.add("AI");
    request.setAttribute("courses", courses);
  %>

    <%-- Use forEach to iterate over the list --%>
    <ul>
        <c:forEach var="name" items="${courses}">
            <li><c:out value="${name}"/></li>
        </c:forEach>
    </ul>

    <%-- Use if to check condition --%>
    <c:if test="${courses.size() > 2}">
        <p>There are more than 2 courses in the list.</p>
    </c:if>

    <%-- Use choose-when-otherwise for conditional logic --%>
    <c:choose>
        <c:when test="${empty courses}">
            <p>The list of course is empty.</p>
        </c:when>
        <c:otherwise>
            <p>The list of course is not empty.</p>
        </c:otherwise>
    </c:choose>

    <%-- Define a URL with parameters --%>
    <c:url var="myUrl" value="mypage.jsp">
        <c:param name="Roll" value="1"/>
        <c:param name="Name" value="ABC"/>
    </c:url>

    <%-- Output the URL --%>
    <p>Generated URL: <c:out value="${myUrl}"/>"</p>

    <%-- Import content from another URL --%>
    <c:import url="http://google.com"/>
    
   

</body>
</html>
