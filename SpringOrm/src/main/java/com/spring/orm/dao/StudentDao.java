package com.spring.orm.dao;

import java.util.List;

import javax.transaction.Transactional;

import com.spring.orm.entity.Student;

public interface StudentDao {
	@Transactional
	public int insert(Student student);
}
