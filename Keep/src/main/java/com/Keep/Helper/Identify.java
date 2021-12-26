package com.Keep.Helper;



import org.hibernate.Query;
import org.hibernate.Session;

import com.Keep.Entities.User;

public class Identify {
	static Session session = FactoryProvider.getFactory().openSession();
	public static User checkUserInDb(String email,String password){
			User user = null;
		String hqlQuery = "from User where email=:x and password=:y";
		
		Query query = session.createQuery(hqlQuery);
		query.setParameter("x",email);
		query.setParameter("y", password);
		user = (User) query.uniqueResult();
		return user;
	}
}
