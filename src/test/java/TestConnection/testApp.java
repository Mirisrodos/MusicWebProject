package TestConnection;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.musicweb.model.entity.Users;
import com.musicweb.util.HibernateUtils;


public class testApp {

	public static void main(String[] args) {
		Date date = new Date(2002-12-12);
		
		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		Users a = session.load(Users.class, 2);
		
		System.out.println(a.getName());
		transaction.commit();
		System.out.println("Finally");
	}
}
