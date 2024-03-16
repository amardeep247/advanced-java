/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.ak.learning;
import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
/**
 *
 * @author amard
 */
public class HelloWorldTag extends SimpleTagSupport {
    
     @Override
    public void doTag() throws JspException, IOException {
        getJspContext().getOut().write("Hello, World!\n");
    }
}
