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
		UserDAO userdao = new UserDAO();
		
		Users uy = userdao.select(2);
		Playlists a = new Playlists(uy, "playlix100");
		
		PlaylistDAO dao=new PlaylistDAO();
		
		dao.insert(a);
		
		
//		System.out.println(ab.getName());
		System.out.println("Finally");
	}
}
