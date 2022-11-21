package com.musicweb.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.musicweb.model.entity.Songs;

public class SongDao extends HibernateDAO<Songs> implements GenericDAO<Songs> {

	@Override
	public Songs select(int id) {
		// TODO Auto-generated method stub
		return super.select(Songs.class, id);
	}
	
	@Override
	public Songs insert(Songs entity) {
		// TODO Auto-generated method stub
		return super.insert(entity);
	}
	
	@Override
	public Songs update(Songs entity) {
		// TODO Auto-generated method stub
		return super.update(entity);
	}
	
	@Override
	public Songs delete(Songs entity) {
		// TODO Auto-generated method stub
		return super.delete(entity);
	}	
	
	public List<Songs> selectAll() {
		List<Songs> entity = null;
		try (Session session = factory.openSession()) {

			String query = "select s from Songs s";
			entity = session.createQuery(query).list();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return entity;
	}
}
