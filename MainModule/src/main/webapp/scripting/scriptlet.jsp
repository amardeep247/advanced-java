<%-- 
    Document   : scriptlet
    Created on : 10-Feb-2024, 1:46:30 PM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%     
          
            String name = "Everyone";
            String  course = "Scriptlet";
            out.println("Hello, " + name + "! You are learning " + course + ".");
        %>
      <p>Today's date is <%= new java.util.Date() %>.</p>
      <p> Before increment: <%=counter%></p>
      <%incrementCounter();%>
       <p> After increment: <%=counter%></p>
      
<%!
   
    int counter = 0;
    public void incrementCounter() {
        counter++;
    }
%>



    </body>
</html>
