package com.musicweb.controller;

import com.musicweb.model.dao.UserDAO;
import com.musicweb.model.entity.Users;
import com.musicweb.model.entity.Songs;

import java.util.List;

import com.musicweb.model.dao.SongDao;


public class testApp {
    public static void main(String[] args) {
        SongDao songDao = new SongDao();

        List<Songs> listsong = songDao.selectAll();

    
    }
}
