package com.musicweb.model.dao;

import java.util.List;

import org.hibernate.Session;

import com.musicweb.model.entity.Songs;
import com.musicweb.model.entity.Users;

public class SongDAO extends HibernateDAO<Songs> implements GenericDAO<Songs> {

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

	public List<Songs> selectByUser(Integer id){
		List<Songs> songs = null;
		String HQL = "select u from Users u " +
				"";
		try (Session session = factory.openSession()) {
			songs = session.createQuery(HQL).setParameter("id", id).list();
		} catch(Exception e){
			e.printStackTrace();
		}
		return songs;
	}

	public List<Songs> selectBySinger(Integer id){
		List<Songs> songs = null;
		String HQL = "select s from Songs s inner join s.singers si where si.singerId = :id";
		try (Session session = factory.openSession()){
			songs = session.createQuery(HQL).setParameter("id", id).list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return songs;
	}
}
