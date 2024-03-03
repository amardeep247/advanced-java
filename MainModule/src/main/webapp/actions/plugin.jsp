<%-- 
    Document   : plugin.jsp
    Created on : 17-Feb-2024, 8:50:49 PM
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
    <h1>Applet Example</h1>
    <jsp:plugin type="applet" code="MyApplet.class" codebase="/applets" width="400" height="300">
      
        <jsp:params>
            <jsp:param name="param1" value="value1"/>
            <jsp:param name="param2" value="value2"/>
        </jsp:params>
       
       
    </jsp:plugin>
</body>
</html>
