package com.zj.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String session_verifyCode= (String) request.getSession().getAttribute("session_vcode");
        String verifyCode=request.getParameter("verifyCode");
        System.out.println(session_verifyCode);
        System.out.println(verifyCode);
        if (!session_verifyCode.equalsIgnoreCase(verifyCode)){
            request.setAttribute("msg","验证码错误");
            request.getRequestDispatcher("/session2/login.jsp").forward(request,response);
            return;
        }

        request.setCharacterEncoding("UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //不区分大小写
        if ("zj".equalsIgnoreCase(username)) {
            Cookie cookie = new Cookie("username",username);
            cookie.setMaxAge(60*3);  //3min
            response.addCookie(cookie);
            HttpSession session = request.getSession();
            session.setAttribute("username",username);
            response.sendRedirect("/AlibabaJSP/session2/success1.jsp");
        }else {
            request.setAttribute("msg","用户名或密码错误");
            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/session2/login.jsp");
            requestDispatcher.forward(request, response);
        }
    }
}
