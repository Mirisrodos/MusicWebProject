package com.musicweb.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.musicweb.model.dao.SingerDAO;
import com.musicweb.model.dao.SongDAO;
import com.musicweb.model.entity.Singers;
import com.musicweb.model.entity.Songs;

@WebServlet(urlPatterns = {"/songdetail"})
public class SongDetailServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
    private SongDAO songDAO = null;
    
    public void init() {
        songDAO = new SongDAO();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		
		int songId = Integer.parseInt( request.getParameter("songid"));
    	
		Songs songDetail = songDAO.select(songId);
		request.setAttribute("songDetail", songDetail);
		
		RequestDispatcher rd = request.getRequestDispatcher("songdetail.jsp");
        rd.forward(request, response);
	}
}
