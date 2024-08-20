package com.pegination;
import java.util.*;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.first.Student;

public class InSelectedRow {
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
        org.hibernate.Session session=factory.openSession();
        
        org.hibernate.query.Query query= session.createQuery("from Student");
        query.setFirstResult(0);
        query.setMaxResults(1);
        List<Student> list= query.list();
        for(Student st:list)
        {
        	System.out.println(st);
        }
        
        session.close();
        factory.close();
        
	}
}
