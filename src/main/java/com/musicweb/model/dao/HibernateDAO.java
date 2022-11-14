package com.musicweb.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.musicweb.util.HibernateUtils;

public class HibernateDAO<E> {
	protected static SessionFactory factory;

	// Chay khi duoc goi tuong tu contructor()
	static {
		factory = HibernateUtils.getSessionFactory();
	}

	public HibernateDAO() {
	}

	public E insert(E entity) {
		Transaction transaction = null;
		try (Session session = factory.openSession()) {
			transaction = session.beginTransaction();

			session.persist(entity);
			// Dong bo du lieu hien tai tren hibernate voi database (them du lieu xuong
			// database)
			session.flush();
			// Tai lai du lieu Database
			session.refresh(entity);
			// Khi transaction.commit thi lenh session.flush() cung duoc chay
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return entity;
	}
	
	public E update(E entity) {
		Transaction transaction = null;
		try (Session session = factory.openSession()) {
			transaction = session.beginTransaction();

			session.saveOrUpdate(entity);

			session.flush();
			session.refresh(entity);
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return entity;
	}
	
	public E delete(E entity) {
		Transaction transaction = null;
		try (Session session = factory.openSession()) {
			transaction = session.beginTransaction();

			session.delete(entity);

			session.flush();
			session.refresh(entity);
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return entity;
	}
	
	public E select(Class<E> classE, int id) {
		E entity = null;
		Transaction transaction = null;
		try (Session session = factory.openSession()) {
			transaction = session.beginTransaction();

			entity = session.get(classE, id);

			session.flush();
			// Tai lai du lieu Database
			session.refresh(entity);
			// Khi transaction.commit thi lenh session.flush() cung duoc chay
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return entity;
	}


	public void close() {
		if (factory != null) {
			factory.close();
		}
	}
}
