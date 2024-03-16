<%-- 
    Document   : simpleTag
    Created on : 01-Mar-2024, 8:37:41 PM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="hello" uri="/WEB-INF/hello.tld" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Simple Tag</h1>
       
      <hello:helloWorld/>
    </body>
</html>
