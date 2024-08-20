package com.onetomeny;

import java.util.*;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class EmployeeDetails {
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
		org.hibernate.Session session=factory.openSession();
		List<Account> accounts=new ArrayList<Account>();
		Employee emp=new Employee();
		emp.setEmpid(1001);
		emp.setName("mrx");
		
		Account ac1=new Account();
		ac1.setAccnumber(93482954632l);
		ac1.setType("Seving");
		
		Account ac2=new Account();
		ac2.setAccnumber(12345637834l);
		ac2.setType("curent");
		
		
		accounts.add(ac1);
		accounts.add(ac2);
		
		emp.setAccount(accounts);
		
		org.hibernate.Transaction tx= session.beginTransaction();
		
		session.save(ac1);
		session.save(ac2);
		session.save(emp);
		
		
		
		
		tx.commit();
		factory.close();
		session.close();
		
	}
}
