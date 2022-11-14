package TestConnection;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.musicweb.model.entity.Users;
import com.musicweb.util.HibernateUtils;
import com.musicweb.model.dao.*;


public class testApp {

	public static void main(String[] args) {
		Date date = new Date(2002-12-12);
		UserDAO dao = new UserDAO();
		
		Users user = new Users("adsads", "21321321", "jacob", 1);
		
	
		Users a = dao.insert(user);
		
		System.out.println(a.getName());
		System.out.println("Finally");
	}
}
