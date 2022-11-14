package TestConnection;

import java.util.Date;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.musicweb.model.entity.Playlists;
import com.musicweb.model.entity.Songs;
import com.musicweb.model.entity.Users;
import com.musicweb.util.HibernateUtils;
import com.musicweb.model.dao.*;

public class testApp {

	public static void main(String[] args) {
<<<<<<< HEAD
		Date date = new Date(2002-12-12);
		UserDAO dao = new UserDAO();
		
		Users user = new Users("adsads", "21321321", "jacob", 1);
		
	
		Users a = dao.insert(user);
=======
		UserDAO userdao = new UserDAO();
>>>>>>> 910cc13a5e2ff92f72a50090fa3fa0791a095c77
		
		Users uy = userdao.select(2);
		Playlists a = new Playlists(uy, "playlix100");
		
		PlaylistDAO dao=new PlaylistDAO();
		
		dao.insert(a);
		
		
//		System.out.println(ab.getName());
		System.out.println("Finally");
	}
}
