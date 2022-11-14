package com.musicweb.model.dao;

import com.musicweb.model.entity.Albums;


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

}
