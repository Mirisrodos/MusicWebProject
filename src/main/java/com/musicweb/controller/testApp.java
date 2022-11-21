package com.musicweb.controller;

import com.musicweb.model.entity.Songs;

import java.util.List;

import com.musicweb.model.dao.SongDAO;


public class testApp {
    public static void main(String[] args) {
        SongDAO songDao = new SongDAO();

        List<Songs> listsong = songDao.selectAll();

    
    }
}
