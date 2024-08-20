package com.first;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FetchData {
    public static void main(String[] args) {
    	 SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
         org.hibernate.Session session=factory.openSession();
         Address address=(Address)session.get(Address.class, 1);
         System.out.println(address);
         Student student=(Student)session.load(Student.class, 200);
         System.out.println(student.getCity());
         session.close();
         factory.close();
         System.out.println("Done...........");
         
	}
    
}
