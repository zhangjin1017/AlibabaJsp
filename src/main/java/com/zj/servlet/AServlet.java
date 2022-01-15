package com.zj.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AServlet", value = "/AServlet")
public class AServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String s1=request.getParameter("num1");
        String s2=request.getParameter("num2");
        int result= Integer.parseInt(s1)+Integer.parseInt(s2);
        request.setAttribute("result",result);
        request.getRequestDispatcher("/add/result.jsp").forward(request, response);
    }
}
