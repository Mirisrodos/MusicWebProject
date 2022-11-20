package com.musicweb.controller;

import com.musicweb.model.dao.UserDAO;
import com.musicweb.model.entity.Users;

public class testApp {
    public static void main(String[] args) {
        UserDAO udao = new UserDAO();

        Users user = udao.selectByAccount("hoa");

        System.out.println(user.getName());
    }
}
