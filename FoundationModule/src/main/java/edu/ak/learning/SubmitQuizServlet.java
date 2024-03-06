/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package edu.ak.learning;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author amard Program to demonstrate online web applications (Online Quiz
 * etc).
 */
public class SubmitQuizServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userAnswer = request.getParameter("answer");

        HttpSession session = request.getSession();
        List<Question> questions = (List<Question>) session.getAttribute("questions");
        int currentQuestionIndex = (int) session.getAttribute("currentQuestionIndex");
        int score = (int) session.getAttribute("score");

        Question currentQuestion = questions.get(currentQuestionIndex);

        if (userAnswer != null && userAnswer.equals(currentQuestion.getCorrectOption())) {
            score++;
        }

        currentQuestionIndex++;

        session.setAttribute("currentQuestionIndex", currentQuestionIndex);
        session.setAttribute("score", score);
        response.sendRedirect("quiz.jsp");  
    }
}
