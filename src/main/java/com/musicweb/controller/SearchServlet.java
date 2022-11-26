package com.musicweb.controller;

<<<<<<< HEAD
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

=======
import com.musicweb.model.dao.PlaylistDAO;
>>>>>>> 82088e44d02616ffdcde798628b6bad11dff2457
import com.musicweb.model.dao.SingerDAO;
import com.musicweb.model.dao.SongDAO;
import com.musicweb.model.entity.Singers;
import com.musicweb.model.entity.Songs;

<<<<<<< HEAD
@WebServlet(urlPatterns = {"/search"})
public class SearchServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private SingerDAO singerDAO = null;
	private SongDAO songDAO = null;
	
	public void init() {
		singerDAO = new SingerDAO();
		songDAO = new SongDAO();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		String searchWord = request.getParameter("searchword");
		List<Songs> songList = songDAO.searchSong(searchWord);
		List<Singers> singersList = singerDAO.searchSinger(searchWord);
		
		
		if(songList.size() > 0) {
			request.setAttribute("firstSong", songList.get(0));
		}
		request.setAttribute("songList", songList);
		request.setAttribute("singersList", singersList);
		RequestDispatcher rd = request.getRequestDispatcher("searchpage.jsp");
        rd.forward(request, response);

	}
=======
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
>>>>>>> 82088e44d02616ffdcde798628b6bad11dff2457
}
