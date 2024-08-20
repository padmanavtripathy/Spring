package com.first;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.mysql.cj.Session;
import com.onetomeny.Employee;

public class States {
	public static void main(String[] args) {
		System.out.println("Example : ");
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
		org.hibernate.Session session=factory.openSession();
		Student st=new Student();
		st.setId(1001);
		st.setName("jax");
		st.setCity("Mosko");
		
		//Transient	
		session.beginTransaction();
		session.save(st);
		
		
		
		//Persistant
		st.setName("Rabi");
		session.getTransaction().commit();
		session.close();
		
		
		//Detached 
		st.setName("Rakesh");
		factory.close();
		
		
		
	}
}
