package com.musicweb.model.dao;

import com.musicweb.model.entity.Albums;
import com.musicweb.model.entity.Playlists;
import com.musicweb.model.entity.Songs;

import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;

public class AlbumDAO extends HibernateDAO<Albums> implements GenericDAO<Albums> {

	@Override
	public Albums select(int id) {
		// TODO Auto-generated method stub
		return super.select(Albums.class, id);
	}

	@Override
	public Albums insert(Albums entity) {
		// TODO Auto-generated method stub
		return super.insert(entity);
	}

	@Override
	public Albums delete(Albums entity) {
		// TODO Auto-generated method stub
		return super.delete(entity);
	}

	@Override
	public Albums update(Albums entity) {
		// TODO Auto-generated method stub
		return super.update(entity);
	}

	public Albums selectBySinger(int id) {
		Albums album = null;
		String HQL = "select a from Albums a inner join a.singers s where s.id = :id";

		try (Session session = factory.openSession()) {
			album = (Albums) session.createQuery(HQL).setParameter("id", id).uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return album;
	}

//	Add song to an album
//	public int insertToAlbum(int alid, int songid) {
//
////		0 = already exist; 1= add song succesfully
//
//		AlbumDAO aldao = new AlbumDAO();
//		SongDAO sndao = new SongDAO();
//
//		Set<Songs> songses = new HashSet<Songs>(0);
//		Songs sn = new Songs();
//		Albums alb = new Albums();
//
//		alb = aldao.select(alid);
//		sn = sndao.select(songid);
//		songses = alb.getSongses();
//
//		for (Songs son : songses) {
//			if (son.getSongId() == songid)
//				return 0;
//		}
//
//		songses.add(sn);
////		sn.setAlbums(alb);
//		
//		alb.setSongses(songses);
//		
//		aldao.update(alb);
//		return 1;
//	}

}
