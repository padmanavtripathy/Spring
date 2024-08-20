package com.spring.orm.dao;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.spring.orm.entity.Student;

public class StudentDaoImpl implements StudentDao {
	private HibernateTemplate hibernateTemplate;
	
	public int insert(Student student) {
//		hibernateTemplate.setCheckWriteOperations(false);
		int a=(Integer) this.hibernateTemplate.save(student);
		// TODO Auto-generated method stub
		return a;
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	
}
