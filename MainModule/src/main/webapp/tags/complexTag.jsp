<%-- 
    Document   : complexTag
    Created on : 13-Feb-2024, 8:44:43 PM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="ex" uri="/WEB-INF/complex-tag.tld" %>
<!DOCTYPE html>

<html>
<head>
    <title>Complex Tag Example</title>
</head>
<body>
    <h1>Complex Tag Example</h1>
    
    <ex:complexTagExample message="This is a message">
        <p>This is the body content of the complex tag.</p>
    </ex:complexTagExample>
</body>
</html>
