package com.embedingobjects;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Semestar {
	public static void main(String[] args) {
		 SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
	     org.hibernate.Session session=factory.openSession();
	     StudentMark studentMark=new StudentMark();
	     studentMark.setId(121);
	     studentMark.setName("padmanav");
	     Score score=new Score();
	     score.setTotal(600);
	     score.setContains(450);
	     
	     studentMark.setScore(score);
	     session.beginTransaction();
	     session.save(studentMark);
	     session.getTransaction().commit();
	     System.out.println(studentMark);
	   
	     
	     
	     
	     session.close();
	     factory.close();
	     
	}
}
