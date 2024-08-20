package com.caching;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.first.Student;

public class FirstLevelCaching {
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
        org.hibernate.Session session=factory.openSession();
        Student student= session.get(Student.class, 1003);
        System.out.println(student);
        //It store the values in cache if we call second time then it will not call again and again when we call second time
        Student student2= session.get(Student.class, 1003);
        System.out.println(student2);
        session.close();
        factory.close();
	}
}
