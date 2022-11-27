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

import com.musicweb.model.dao.AlbumDAO;
import com.musicweb.model.dao.SingerDAO;
import com.musicweb.model.dao.SongDAO;
import com.musicweb.model.entity.Albums;
import com.musicweb.model.entity.Singers;
import com.musicweb.model.entity.Songs;

/**
 * Servlet implementation class PlaylistServlet
 */
@WebServlet(urlPatterns = { "/playlist" })
public class PlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SongDAO songDAO = null;
	private SingerDAO singerDAO = null;
	private AlbumDAO albumDAO = null;

	public void init() {
		songDAO = new SongDAO();
		singerDAO = new SingerDAO();
		albumDAO = new AlbumDAO();
	}

	public PlaylistServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		List<Songs> listsong = songDAO.selectAll();
		List<Singers> listsinger = singerDAO.selectAll();
		

		if (session.getAttribute("userid") != null) {
			String userId = (String) session.getAttribute("userid").toString();
			List<Songs> userListSong = songDAO.selectByUser(Integer.parseInt(userId));
			session.setAttribute("userListSong", userListSong);
			session.setAttribute("userListSong2", listsong);
		}

		String listSongResultJSON = "[";

		for (Songs song : listsong) {
			if (song.getSongId() > 1)
				listSongResultJSON += ",";

			String data = ("{" + "\"" + "name" + "\"" + ":" + "\"" + song.getName() + "\"" + "," + "\"" + "song_id"
					+ "\"" + ":" + "\"" + String.valueOf(song.getSongId()) + "\"" + "}");
			listSongResultJSON += data;
		}
		listSongResultJSON += "]";

		session.setAttribute("listSongResultJSON", listSongResultJSON);
		session.setAttribute("listSong", listsong);

		RequestDispatcher rd = request.getRequestDispatcher("playlist.jsp");
		rd.forward(request, response);
	}

	

}
