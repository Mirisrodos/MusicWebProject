package com.musicweb.model.dao;

import com.musicweb.model.entity.Playlists;

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

}
