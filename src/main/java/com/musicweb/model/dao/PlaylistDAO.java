package com.musicweb.model.dao;

import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.musicweb.model.entity.Playlists;
import com.musicweb.model.entity.Songs;

public class PlaylistDAO extends HibernateDAO<Playlists> implements GenericDAO<Playlists> {

	@Override
	public Playlists insert(Playlists entity) {
		// TODO Auto-generated method stub
		return super.insert(entity);
	}

	@Override
	public Playlists delete(Playlists entity) {
		// TODO Auto-generated method stub
		return super.delete(entity);
	}

	@Override
	public Playlists update(Playlists entity) {
		// TODO Auto-generated method stub
		return super.update(entity);
	}

	@Override
	public Playlists select(int id) {
		// TODO Auto-generated method stub
		return super.select(Playlists.class, id);
	}
//	

//	add song to a playlist
	public int insertToPlaylist(int plid, int songid) {

//		0 = already exist; 1= add song succesfully

		PlaylistDAO dao = new PlaylistDAO();
		SongDAO sndao = new SongDAO();

		Set<Songs> songses = new HashSet<Songs>(0);
		Set<Playlists> playlistses = new HashSet<Playlists>(0);
		Playlists pl = new Playlists();
		Songs sn = new Songs();

		sn = sndao.select(songid);
		pl = dao.select(plid);
		songses = pl.getSongses();
		playlistses = sn.getPlaylistses();

		for (Songs son : songses) {
			if (son.getSongId() == songid)
				return 0;
		}

		songses.add(sn);
		playlistses.add(pl);

		pl.setSongses(songses);
		sn.setPlaylistses(playlistses);

		dao.update(pl);
		sndao.update(sn);
		return 1;
	}

//	remove song from a playlist
	public int removeFromPlaylist(int plid, int songid) {

//		0 = this song isn't exist in playlist; 1 = remove song succesfully

		PlaylistDAO dao = new PlaylistDAO();
		SongDAO sndao = new SongDAO();

		Set<Songs> songses = new HashSet<Songs>(0);
		Set<Playlists> playlistses = new HashSet<Playlists>(0);
		Playlists pl = new Playlists();
		Songs sn = new Songs();

		sn = sndao.select(songid);
		pl = dao.select(plid);
		songses = pl.getSongses();
		playlistses = sn.getPlaylistses();

		for (Songs son : songses) {
			if (son.getSongId() == songid) {

				songses.remove(son);
				for (Playlists ply : playlistses) {
					if (ply.getPlaylistId() == plid) {
						playlistses.remove(ply);

						pl.setSongses(songses);
						sn.setPlaylistses(playlistses);

						dao.update(pl);
						sndao.update(sn);
						return 1;
					}
				}
			}
		}
		return 0;
	}

}
