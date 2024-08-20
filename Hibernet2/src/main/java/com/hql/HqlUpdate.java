package com.hql;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.mysql.cj.Query;

public class HqlUpdate {
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
	    org.hibernate.Session session=factory.openSession();
	    session.beginTransaction();
	    
	    org.hibernate.query.Query query= session.createQuery("update Student set city=:c where name=:n");
	    query.setParameter("c", "bbsr");
	    query.setParameter("n", "Rohan");
	    int r=query.executeUpdate();
	    session.getTransaction().commit();
	    System.out.println(r);
	    session.close();
	    factory.close();
	}
	
}
