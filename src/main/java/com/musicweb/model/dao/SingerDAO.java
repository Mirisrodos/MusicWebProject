package com.musicweb.model.dao;

import com.musicweb.model.entity.Playlists;
import com.musicweb.model.entity.Singers;

public class SingerDAO extends HibernateDAO<Singers> implements GenericDAO<Singers> {

	@Override
	public Singers select(int id) {
		// TODO Auto-generated method stub
		return super.select(Singers.class, id);
	}
	
	@Override
	public Singers insert(Singers entity) {
		// TODO Auto-generated method stub
		return super.insert(entity);
	}
	
	@Override
	public Singers delete(Singers entity) {
		// TODO Auto-generated method stub
		return super.delete(entity);
	}
	
	@Override
	public Singers update(Singers entity) {
		// TODO Auto-generated method stub
		return super.update(entity);
	}

}
