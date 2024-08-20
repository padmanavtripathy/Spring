package com.hql;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.first.Student;
import com.mysql.cj.Query;

public class HqlSelect {
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
        org.hibernate.Session session=factory.openSession();
        
        
        //single value
        String query2="from Student where name =:x";
        org.hibernate.query.Query q1=session.createQuery(query2);
        q1.setParameter("x", "Rabi");
        Student st=(Student) q1.uniqueResult();
        System.out.println(st);
        
        //multiple condition
        String query3="from Student as S where S.name=:x and S.city=:n";
        org.hibernate.query.Query q3=session.createQuery(query3);
        q3.setParameter("x", "jon");
        q3.setParameter("n", "Taiwan");
        Student st2=(Student) q3.uniqueResult();
        System.out.println(st2);
        
        
        //Multiple value 
        String query="from Student";
        org.hibernate.query.Query q =session.createQuery(query);
        java.util.List<Student> list=q.list();
        for(Student student:list)
        {
        	System.out.println(student);
        }
        factory.close();
        session.close();
	}
}
