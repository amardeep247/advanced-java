/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package edu.somaiya.mca;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
/**
 *
 * @author amard
 * Program to demonstrate Generic and HTTP Servlet response and request objects.
 */
public class GenericServletDemo extends GenericServlet {

    @Override
    public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h2>Generic Servlet Example</h2>");
        out.println("<p>Request URI: " + request.getServerName() + request.getServerPort()  + request.getRemoteHost() + request.getRemoteAddr() + request.getRemotePort() + "</p>");
        out.println("<p>Service Called</p>");
        out.println("</body></html>");
    }

}
