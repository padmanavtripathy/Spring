package com.others;
import java.util.*;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.onetomeny.Account;
import com.onetomeny.Employee;
import com.onetoonemaping.Answer;
import com.onetoonemaping.Question;

import antlr.collections.List;

public class Cascading {
	
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
        org.hibernate.Session session=factory.openSession();
        java.util.List<Account> accounts=new ArrayList<Account>();
        Employee emp=new Employee();
        emp.setEmpid(2002);
        emp.setName("Robert");
        Account a=new Account();
        a.setAccnumber(3475374537l);
        a.setType("Seving");
        Account a2=new Account();
        a2.setAccnumber(5347535434l);
        a2.setType("current");
        accounts.add(a);
        accounts.add(a2);
        emp.setAccount(accounts);
        session.beginTransaction();
        session.save(emp);
        session.getTransaction().commit();
        session.close();
        factory.close();
	}
}
