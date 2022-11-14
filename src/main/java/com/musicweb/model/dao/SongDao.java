package com.musicweb.model.dao;

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

}
