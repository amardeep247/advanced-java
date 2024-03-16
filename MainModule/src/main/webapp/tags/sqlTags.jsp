<%-- 
    Document   : sqlTags
    Created on : 13-Feb-2024, 9:45:43 PM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>SQL Tags Example</title>
</head>
<body>
    <h1>SQL Tags Example</h1>

    <%-- Establish database connection --%>
    <sql:setDataSource
        var="dataSource"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/mca_demo"
        user="mca"
        password="mca_2024"
    />

    <%-- Execute SQL query --%>
    <sql:query dataSource="${dataSource}" var="result">
        SELECT * FROM students;
    </sql:query>

    <%-- Iterate over query result and display data --%>
    <c:forEach var="row" items="${result.rows}">
        <p>ID: ${row.id}, Name: ${row.name}, Age: ${row.age}</p>
    </c:forEach>
</body>
</html>
