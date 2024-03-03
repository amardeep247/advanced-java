<%-- 
    Document   : param
    Created on : 17-Feb-2024, 8:42:23 PM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  <body>
    <h1>Welcome to My Website</h1>
    <jsp:include page="paramAction.jsp">
     <jsp:param name="username" value="ABC" />
    </jsp:include>
</body>
</html>
