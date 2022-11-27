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

import com.musicweb.model.dao.PlaylistDAO;
import com.musicweb.model.dao.SongDAO;
import com.musicweb.model.entity.Songs;

/**
 * Servlet implementation class RemoveSongServlet
 */
@WebServlet(urlPatterns = {"/removesong"})
public class RemoveSongServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SongDAO songDAO = null;
	private PlaylistDAO playlistDAO = null;

	public RemoveSongServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init() {
		playlistDAO = new PlaylistDAO();
		songDAO = new SongDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();


		int songid = Integer.parseInt(request.getParameter("songid"));

		if (session.getAttribute("userid") != null) {
			String userId = (String) session.getAttribute("userid").toString();
			int result = playlistDAO.removeFromPlaylist(Integer.parseInt(userId), songid);
			List<Songs> userListSong = songDAO.selectByUser(Integer.parseInt(userId));
			session.setAttribute("userListSong", userListSong);
		}

		RequestDispatcher rd = request.getRequestDispatcher("playlist");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
