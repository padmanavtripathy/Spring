package com.hql;

import com.first.Student;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.mysql.cj.Query;

public class HqlDelete {
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
        org.hibernate.Session session=factory.openSession();
        
        session.beginTransaction();
        
//        String query="delete form Student where name=:n";
//       
//        org.hibernate.query.Query q=session.createQuery("form Student where name='jon'");
//      
////        q.setParameter("n", "jon");
//        int r=q.executeUpdate();
        
        org.hibernate.query.Query query=session.createQuery("delete from Student where name='jon'");  
      //specifying class name (Emp) not tablename  
      int r=query.executeUpdate();
        if(r!=0)
        {
        	
        	System.out.println("Deleted");
        }
        
        session.getTransaction().commit();
        
        
        session.close();
        factory.close();
	}
}
