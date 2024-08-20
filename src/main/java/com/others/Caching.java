package com.others;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Caching {
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
        org.hibernate.Session session=factory.openSession();
        
	}
}
