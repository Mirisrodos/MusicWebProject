package com.musicweb.controller;

import com.musicweb.model.dao.PlaylistDAO;
import com.musicweb.model.dao.SingerDAO;
import com.musicweb.model.dao.SongDAO;
import com.musicweb.model.entity.Singers;
import com.musicweb.model.entity.Songs;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SongDAO songDAO = new SongDAO();
        SingerDAO singerDAO = new SingerDAO();

//        Select song list && singer list
        String name = request.getParameter("searchValue");
        List<Songs> songsList = songDAO.searchSong(name);
        List<Singers> singersList = singerDAO.searchSinger(name);
        songsList.get(0).getName();

//        Set parameter
        request.setAttribute("songlist", songsList);
        request.setAttribute("singerlist", singersList);
        RequestDispatcher rd = request.getRequestDispatcher("searchpage.jsp");
        rd.forward(request, response);
    }
}
