package com.musicweb.controller;

import com.musicweb.model.entity.Songs;

import java.util.List;

import com.musicweb.model.dao.SongDAO;


public class testApp {
    public static void main(String[] args) {
        SongDAO songDao = new SongDAO();

        List<Songs> songs = songDao.selectBySinger(1);
    	List<Songs> listsong = songDao.selectAll();
    	String result = "{";
    	result.concat("2");
    	System.out.print(result);
        listsong.forEach((song) -> {
        	
        });

        System.out.println(songs.get(1).getName());
    }
}
