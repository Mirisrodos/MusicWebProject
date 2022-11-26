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


@WebServlet(urlPatterns = {"/singerdetail"})
public class SingerDetailServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private SingerDAO singerDAO = null;
	private SongDAO songDAO = null;
	
	 public void init() {
	    singerDAO = new SingerDAO();
	    songDAO = new SongDAO();
	 }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		
		int singerId = Integer.parseInt( request.getParameter("singerid"));
		List<Songs> listSong = songDAO.selectBySinger(singerId);
		
		Singers singerDetail = singerDAO.select(singerId);
		
		request.setAttribute("singerDetail", singerDetail);
		request.setAttribute("listSong", listSong);

	
		RequestDispatcher rd = request.getRequestDispatcher("singerpage.jsp");
        rd.forward(request, response);
	}
}
