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

import com.musicweb.model.dao.SongDAO;
import com.musicweb.model.entity.Songs;

@WebServlet("/")
public class IndexServlet extends HttpServlet{
    private static final long serialVersionUID = 1L;
    private SongDAO songDAO = null;
    
    public void init() {
        songDAO = new SongDAO();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	List<Songs> listsong = songDAO.selectAll();
        String listSongResult = "[";
       
        for(Songs song:listsong){
        	String data =( 
        			"{"+"\"" + "name" + "\"" + ":" + "\"" + song.getName() + "\"" + "," +
        			"\"" + "song_id" + "\"" + ":" + "\"" + String.valueOf(song.getSongId()) + "\"" + "}"
        	);
        	listSongResult += data;
        	listSongResult += ",";
        } 
        listSongResult += "]";
        
        request.setAttribute("listSongResult",listSongResult);
        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        rd.forward(request, response);
        System.out.print("123");
    }
}
