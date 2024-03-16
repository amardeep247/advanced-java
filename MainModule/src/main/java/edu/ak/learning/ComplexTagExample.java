/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.ak.learning;

/**
 *
 * @author amard
 */


import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.Tag;
import java.io.IOException;

public class ComplexTagExample extends BodyTagSupport {

    private String message;

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public int doStartTag() throws JspException {
        try {
            // Write the start tag content
            pageContext.getOut().write("<div>");
        } catch (IOException e) {
            throw new JspException(e);
        }
        return EVAL_BODY_INCLUDE;
    }

    @Override
    public int doAfterBody() throws JspException {
        try {
            // Write the body content
            //getBodyContent().append("Welcome to Complex world!");
            pageContext.getOut().write("Welcome to Complex world!");
        } catch (IOException e) {
            throw new JspException(e);
        }
        return SKIP_BODY;
    }

    @Override
    public int doEndTag() throws JspException {
        try {
            // Write the end tag content
            pageContext.getOut().write("</div>");
            if (message != null) {
                pageContext.getOut().write("<p>" + message + "</p>");
            }
        } catch (IOException e) {
            throw new JspException(e);
        }
        return EVAL_PAGE;
    }
}

