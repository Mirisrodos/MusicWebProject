package com.musicweb.controller;

import com.musicweb.model.dao.PlaylistDAO;
import com.musicweb.model.dao.SingerDAO;
import com.musicweb.model.dao.SongDAO;
import com.musicweb.model.dao.UserDAO;
import com.musicweb.model.entity.Playlists;
import com.musicweb.model.entity.Singers;
import com.musicweb.model.entity.Songs;
import com.musicweb.model.entity.Users;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class testController {
    public static void main(String[] args) {
        SongDAO songDao = new SongDAO();


        List<Songs> songs = songDao.searchSong("a");

        System.out.println(songs.get(0).getName());

//        SingerDAO singerDAO = new SingerDAO();
//
//        List<Singers> singers = singerDAO.searchSinger("A");
//        System.out.println(singers.get(0).getName());

        PlaylistDAO playlistDAO = new PlaylistDAO();
        UserDAO userDAO = new UserDAO();

        Songs song = songDao.select(6);
        Users user = userDAO.select(1);
        Playlists playlist = playlistDAO.select(1);


        songs.add(song);


        Set<Playlists> playlists = song.getPlaylistses();

        playlists.add(playlist);

        song.setPlaylistses(playlists);

        songDao.update(song);
        playlistDAO.update(playlist);


    }
}
