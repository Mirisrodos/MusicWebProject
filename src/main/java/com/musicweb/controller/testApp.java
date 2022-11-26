package com.musicweb.controller;

import com.musicweb.model.dao.AlbumDAO;
import com.musicweb.model.entity.Albums;
import com.musicweb.model.entity.Playlists;
import com.musicweb.model.entity.Singers;
import com.musicweb.model.entity.Songs;

import java.util.List;

import com.musicweb.model.dao.SongDAO;


public class testApp {
    public static void main(String[] args) {
        SongDAO songDao = new SongDAO();
        AlbumDAO albumDAO = new AlbumDAO();

//        List<Songs> songs = songDao.selectByUser(1);

//        Songs song = songDao.select(1);

//        Singers singers = song.getSingers();

//        System.out.println(singers.getName());

        Albums album = albumDAO.selectBySinger(1);

        System.out.println(album.getDecription());
    }
}
