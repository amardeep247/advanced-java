<%-- 
    Document   : result
    Created on : 10-Feb-2024, 10:39:26 PM
    Author     : amard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="edu.ak.learning.DataDAO" %>
<html>
    <body>   

<%
    try {
        ResultSet resultSet = DataDAO.getAllUsers();
%>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                </tr>
            </thead>
            <tbody>
<%
        while (resultSet.next()) {
%>
                <tr>
                    <td><%= resultSet.getInt("id") %></td>
                    <td><%= resultSet.getString("name") %></td>
                    <td><%= resultSet.getString("age") %></td>
                </tr>
<%
        }
%>
            </tbody>
        </table>
<%
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
    </body>
</html>