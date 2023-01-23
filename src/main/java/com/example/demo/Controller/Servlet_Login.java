package com.example.demo.Controller;

import com.example.demo.Service.LoginService;
import com.example.demo.model.Login;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "Servlet_Login", value = "/Servlet_Login")
public class Servlet_Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email  =request.getParameter("email");
        String password=request.getParameter("pass");
        Login login = new Login();
        login.setEmail(email);
        login.setPass(password);
        System.out.println(login.getEmail()+" "+login.getPass());
      //---------------------------------------------------------------------------------
        LoginService service = new LoginService();
        try {
            login=service.loginpageService(email,password);
            if(login.getJobRole().equals("teacher"))
            {
                HttpSession Session = request.getSession();

               Session.setAttribute("email",login.getEmail());
                response.sendRedirect("Teachers.jsp");

            } else if (login.getJobRole().equals("student")) {
                HttpSession Session = request.getSession();

                Session.setAttribute("email",login.getEmail());
                response.sendRedirect("student.jsp");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }


}
