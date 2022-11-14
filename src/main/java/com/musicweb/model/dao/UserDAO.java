package com.musicweb.model.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.musicweb.model.entity.Users;

public class UserDAO extends HibernateDAO<Users> implements GenericDAO<Users> {

	@Override
	public Users insert(Users user) {
		return super.insert(user);
	}
	
	@Override
	public Users update(Users user) {
		return super.update(user);
	}
	
	@Override
	public Users delete(Users user) {
		// TODO Auto-generated method stub
		return super.delete(user);
	}
	
	@Override
	public Users select(int id) {
		return super.select(Users.class, id);
	}
	
	public boolean isValidate(String account, String password) {
		Session session = null;
		Transaction transaction = null;
		Users user = null;
		try {
			session = factory.openSession();
			transaction = session.beginTransaction();
			user = (Users) session.createQuery("FROM Users U WHERE U.account = :account")
					.setParameter("account", account).uniqueResult();

			if (user != null && user.getPassword().equals(password)) {
				return true;
			}
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return false;
	}
}
