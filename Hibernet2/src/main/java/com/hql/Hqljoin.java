package com.hql;
import java.util.*;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.mysql.cj.Query;

public class Hqljoin {
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
        org.hibernate.Session session=factory.openSession();
        org.hibernate.query.Query query= session.createQuery("select e.name ,e.empid,a.accnumber from Employee as e INNER JOIN e.account as a");
        List<Object[]> list= query.getResultList();
        for(Object[] arr:list)
        {
        	
        	System.out.println(Arrays.toString(arr));
        }
        session.close();
        factory.close();
	}
}
