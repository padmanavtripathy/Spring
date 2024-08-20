package com.menytomeny;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Maping {
	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
		org.hibernate.Session session=factory.openSession();
		
		List<Emp> employee=new ArrayList<Emp>();
		List<Emp> employee2=new ArrayList<Emp>();
		List<Emp> employee3=new ArrayList<Emp>();
		
		
		List<Project> project=new ArrayList<Project>();
		List<Project> project2=new ArrayList<Project>();
		List<Project> project3=new ArrayList<Project>();
		
		Emp emp=new Emp();
		emp.setEmpid(100);
		emp.setName("john");
		employee.add(emp);
		employee2.add(emp);
		
		Emp emp2=new Emp();
		emp2.setEmpid(200);
		emp2.setName("Robert");
		employee.add(emp2);
		employee3.add(emp2);
		
		Emp emp3=new Emp();
		emp2.setEmpid(300);
		emp2.setName("jacky");
		employee.add(emp3);
		employee2.add(emp3);
		
		Project p1=new Project();
		p1.setPid(111);
		p1.setName("Library Managment");
		p1.setEmployees(employee);
		project.add(p1);
		project2.add(p1);
		project3.add(p1);
		
		Project p2=new Project();
		p2.setPid(222);
		p2.setName("Hotel Managment");
		p2.setEmployees(employee2);
		project.add(p2);
		
		
		Project p3=new Project();
		p2.setPid(333);
		p2.setName("Online Payment");
		p3.setEmployees(employee3);
		project2.add(p3);
		project3.add(p3);
		
		emp.setProjects(project);
		emp2.setProjects(project2);
		emp3.setProjects(project3);
		
		
		
		session.beginTransaction();
		session.save(project);
		session.save(project2);
		session.save(project3);
		session.save(emp);
		session.save(emp2);
		session.save(emp3);
		
		session.getTransaction().commit();
		factory.close();
		session.close();
		
	}
}
