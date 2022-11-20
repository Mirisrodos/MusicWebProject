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

	public Users selectByAccount(String account){
		Users user;
		try (Session session = factory.openSession()) {
			user = (Users) session.createQuery("FROM Users U WHERE U.account = :useraccount")
					.setParameter("useraccount", account).uniqueResult();
			return user;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public Users select(int id) {
		return super.select(Users.class, id);
	}
	
	public boolean isValidate(String account, String password) {
		Transaction transaction = null;
		Users user;
		try (Session session = factory.openSession()) {
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
		}
		return false;
	}

	public boolean isExist(String useraccount) {
		Transaction transaction = null;
		Users user;
		try (Session session = factory.openSession()) {
			user = (Users) session.createQuery("FROM Users U WHERE U.account = :account")
					.setParameter("account", useraccount).uniqueResult();
			if (user != null) {
				return true;
			}
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return false;
	}
}
