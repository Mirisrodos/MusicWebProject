package com.musicweb.controller;

import com.musicweb.model.dao.SingerDAO;
import com.musicweb.model.dao.SongDAO;
import com.musicweb.model.entity.Singers;
import com.musicweb.model.entity.Songs;

import java.util.List;

public class testController {
    public static void main(String[] args) {
        SongDAO songDao = new SongDAO();

        List<Songs> songs = songDao.searchSong("a");

        System.out.println(songs.get(0).getName());

//        SingerDAO singerDAO = new SingerDAO();
//
//        List<Singers> singers = singerDAO.searchSinger("A");
//        System.out.println(singers.get(0).getName());
    }
}
