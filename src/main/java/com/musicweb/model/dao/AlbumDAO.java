package com.musicweb.model.dao;

import com.musicweb.model.entity.Albums;
import com.musicweb.model.entity.Playlists;
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

		try (Session session = factory.openSession()){
			album = (Albums) session.createQuery(HQL).setParameter("id", id).uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return album;
	}

}
