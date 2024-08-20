package com.onetomeny;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FetchDataTechnique {
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
		org.hibernate.Session session=factory.openSession();
		
		Employee emp=new Employee();
		
		session.beginTransaction();
		
		Employee employee=(Employee) session.get(Employee.class, 1001);
		
		System.out.println(employee.getEmpid());
		System.out.println(employee.getName());
		System.out.println(employee.getAccount().size());
		
		session.getTransaction().commit();
		factory.close();
		session.close();
	}
}
