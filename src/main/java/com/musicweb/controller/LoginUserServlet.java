package com.musicweb.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.musicweb.model.dao.UserDAO;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/login")
public class LoginUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO loginDAO = null;

    @Override
    public void init() {
        loginDAO = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.sendRedirect("login.jsp");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
        	checkAccount(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void checkAccount(HttpServletRequest request, HttpServletResponse response)
    throws Exception {
        String username = request.getParameter("account");
        String password = request.getParameter("password");

        if (loginDAO.isValidate(username, password)) {
//        	Thêm session và các tính năng Attribute khi đăng nhập thành công
            HttpSession session = request.getSession();
            session.setAttribute("userid", loginDAO.selectByAccount(username).getUserId());
            session.setAttribute("username", loginDAO.selectByAccount(username).getName());

            response.sendRedirect("index");
        } else {
//        	Thêm các Attribute khi đăng nhập thất bại để hiện ra thông báo xác nhận là
//        	tài khoản và mật khẩu
            response.sendRedirect("login.jsp");
        }
    }
    
    @Override
    public void destroy() {
    	loginDAO.close();
    }
}