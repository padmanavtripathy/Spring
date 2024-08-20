package com.onetoonemaping;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SetValue {
	
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
		org.hibernate.Session session=factory.openSession();
		
		Question qn=new Question();
		qn.setQuestionId(121);
		qn.setQuestion("Name");
		
		Answer ans=new Answer();
		ans.setAnswerId(131);
		ans.setAnswer("Padmanav");
		
		qn.setAnswer(ans);
		
		org.hibernate.Transaction tx= session.beginTransaction();
		
		session.save(ans);
		session.save(qn);
		
		
		tx.commit();
		factory.close();
		session.close();
		
		
	}
}
