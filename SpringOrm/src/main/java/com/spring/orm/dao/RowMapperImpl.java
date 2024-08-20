package com.spring.orm.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.spring.orm.entity.*;
import org.springframework.jdbc.core.RowMapper;

public class RowMapperImpl implements RowMapper<Student>{

	public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
		Student student=new Student();
		student.setStudentid(rs.getInt(1));
		student.setName(rs.getString(2));
		student.setCity(rs.getString(3));
		return student;
	}
	
}