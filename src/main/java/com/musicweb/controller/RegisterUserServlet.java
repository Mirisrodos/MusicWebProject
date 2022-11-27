package com.musicweb.controller;

import com.musicweb.model.dao.PlaylistDAO;
import com.musicweb.model.dao.UserDAO;
import com.musicweb.model.entity.Playlists;
import com.musicweb.model.entity.Users;
import com.musicweb.util.SendEmailUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/registered")
public class RegisterUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO registeredDAO = null;
    private PlaylistDAO playlistDAO = null;

    @Override
    public void init() throws ServletException {
        registeredDAO = new UserDAO();
        playlistDAO = new PlaylistDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("register.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            createAccount(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void createAccount(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        String text = "Thanks for joining our Website, here is an automatic email to confirm that your account is registered successfully. We will sent you coupons, vouchers and another discount via this email" +
                ". Please not reply this email.";
        String subject = "Thanks for registering my service";

        Users user = new Users();
        user.setName(request.getParameter("username"));
        user.setAccount(request.getParameter("useraccount"));
        user.setPassword(request.getParameter("userpassword"));

        if (!registeredDAO.isExist(user.getAccount())) {
            registeredDAO.insert(user);

            user = registeredDAO.selectByAccount(request.getParameter("useraccount"));
            addPlaylist(user);

//            Thiếu email để nhập
            System.out.println(SendEmailUtils.sendEmail(user.getAccount(), subject, text));
            response.sendRedirect("login.jsp");
        }
        else
        {
            response.sendRedirect("register.jsp");
        }
    }

    private void addPlaylist(Users user){
        Playlists playlist = new Playlists();
        playlist.setUsers(user);
        playlist.setName(user.getName());

        playlistDAO.insert(playlist);
    }

    @Override
    public void destroy() {
        registeredDAO.close();
    }
}
