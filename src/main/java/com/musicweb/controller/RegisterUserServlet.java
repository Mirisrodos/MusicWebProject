package com.musicweb.controller;

import com.musicweb.model.dao.UserDAO;
import com.musicweb.model.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/registered")
public class RegisterUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO registeredDAO = null;

    @Override
    public void init() throws ServletException {
        registeredDAO = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("register.html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            System.out.println("Hello World");
            createAccount(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void createAccount(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        Users user = new Users();
        user.setName(request.getParameter("username"));
        user.setAccount(request.getParameter("useraccount"));
        user.setPassword(request.getParameter("userpassword"));

        if (!registeredDAO.isExist(user.getAccount())) {
            registeredDAO.insert(user);
            response.sendRedirect("login.html");
//            response.sendRedirect("register.html");
        }
        else
        {
            response.sendRedirect("register.html");
        }
    }

    @Override
    public void destroy() {
        registeredDAO.close();
    }
}
