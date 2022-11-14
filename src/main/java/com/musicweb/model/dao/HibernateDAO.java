package com.musicweb.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.musicweb.util.HibernateUtils;

public class HibernateDAO<E> {
	protected static SessionFactory factory = null;

	// Chay khi duoc goi tuong tu contructor()
	static {
		factory = HibernateUtils.getSessionFactory();
	}

	public HibernateDAO() {
	}

	public E insert(E entity) {
		Session session = null;
		Transaction transaction = null;
		try {
			session = factory.openSession();
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
		} finally {
			session.close();
		}
		return entity;
	}


	public void close() {
		if (factory != null) {
			factory.close();
		}
	}
}
