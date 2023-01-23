package com.example.demo.Controller;

import com.example.demo.Service.examaddingService;
import com.example.demo.model.exam;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.swing.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "Servlet_ExamTeachers", value = "/Servlet_ExamTeachers")
public class Servlet_ExamTeachers extends HttpServlet {
    private static   ArrayList<exam>examArrayList = new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action.equals("Add"))
        {
            AddQuestion(request,response);
        } else if (action.equals("Save")) {
            AddData(request,response);
        }

    }

    private static void AddQuestion(HttpServletRequest request,HttpServletResponse response){
        exam exam = new exam();
        String question = request.getParameter("Qustion");
        String answer1 = request.getParameter("Answer1");
        String answer2 = request.getParameter("Answer2");
        String answer3 = request.getParameter("Answer3");
        String answer4 = request.getParameter("Answer4");
        String correctAnswer = request.getParameter("CorrectAnswer");
        try {

        exam.setQuestion(question);
        exam.setAnswer1(answer1);
        exam.setAnswer2(answer2);
        exam.setAnswer3(answer3);
        exam.setAnswer4(answer4);
        exam.setCorrectAnswer(correctAnswer);

        System.out.println(exam.getQuestion()+" "+exam.getAnswer1()+" "+exam.getAnswer2()+" "+exam.getAnswer3()+" "+exam.getAnswer4());
            System.out.println("_______________________________________________________________________________________________________");

        examArrayList.add(exam);
            System.out.println(examArrayList);
            for( exam exam1:examArrayList)
            {
                System.out.println(exam1.getQuestion()+""+exam1.getAnswer1()+""+ exam1.getAnswer2()+""+exam1.getAnswer3()+exam1.getAnswer4()+" "+exam1.getCorrectAnswer());

            }


            request.setAttribute("ExamData",examArrayList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("AddExam.jsp");
            dispatcher.forward(request,response);
            response.sendRedirect("AddExam.jsp");
        } catch (IOException | ServletException e) {
            throw new RuntimeException(e);
        }
    }


    private void AddData(HttpServletRequest request,HttpServletResponse response) throws IOException {
        examaddingService service = new examaddingService();
        try {
          service.addExam(examArrayList);
            System.out.println("examadding successfull");
            response.sendRedirect("AddExam.jsp");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
