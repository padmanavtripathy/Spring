package com.spring.jdbc.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.spring.jdbc.entitys.Student;


public class StudentDaoImpl implements StudentDao {
	
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	//insert into the database
	public int insert(Student student) {
		// TODO Auto-generated method stub
		String query="insert into student(id,name,address) values(?,?,?)";
		int r=jdbcTemplate.update(query,student.getId(),student.getName(),student.getAddress());
		return r;
	}

	//Change database
	public int update(Student student) {
		String query="update student set name=?,address=? where id=?";
		int r=jdbcTemplate.update(query,student.getName(),student.getAddress(),student.getId());
		return r;
	}
	
	//delete database
	public int delete(int studentid) {
		String query="delete from student where id=?";
		int r=jdbcTemplate.update(query,studentid);
		return r;
	}
	
	//get single student
	public Student getStudent(int studentid) {
		String query="Select * from student where id=?";
		RowMapper<Student> rowMapper=new RowMapperImpl();
		Student student=this.jdbcTemplate.queryForObject(query, rowMapper,studentid);
		return student;
	}
	
	//get list of student
	public List<Student> getAllStudent() {
		String query="select * from student";
		List<Student> students=this.jdbcTemplate.query(query,new RowMapperImpl());
		return students;
	}
	

}
