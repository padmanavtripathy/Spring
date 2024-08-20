package com.caching;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SecondLevelCache {
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
        org.hibernate.Session session=factory.openSession();
        session.beginTransaction();
        StudentDetails student=new StudentDetails();
        student.setName("Rajesh");
        student.setPassingyear(2023);
        session.save(student);
        session.getTransaction().commit();
        session.close();
        org.hibernate.Session session1=factory.openSession();
        StudentDetails studentDetails= session1.get(StudentDetails.class, 1);
        System.out.println(studentDetails);
        session.close();
        
        factory.close();
        
	}
}
