package com.musicweb.controller;

import com.musicweb.model.dao.AlbumDAO;
import com.musicweb.model.dao.UserDAO;
import com.musicweb.model.entity.*;

import java.util.List;

import com.musicweb.model.dao.SongDAO;
import com.musicweb.util.SendEmailUtils;


public class testApp {
    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();

        Users user = new Users();
        user.setName("hoa");
        user.setAccount("truongthuanhoa23@gmai.com");
        user.setPassword("123");

        userDAO.insert(user);

    }
}
