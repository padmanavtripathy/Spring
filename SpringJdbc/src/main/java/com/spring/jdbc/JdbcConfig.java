package com.spring.jdbc;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.spring.jdbc.dao.StudentDao;
import com.spring.jdbc.dao.StudentDaoImpl;

@Configuration
public class JdbcConfig {
	
	@Bean("datasourse")
	public DriverManagerDataSource getDataSource()
	{
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/spring");
		dataSource.setUsername("root");
		dataSource.setPassword("Pintu@123");
		return dataSource;
	}
	@Bean("jdbctemplete")
	public JdbcTemplate getTemplate()
	{
		JdbcTemplate jdbcTemplate=new JdbcTemplate();
		jdbcTemplate.setDataSource(getDataSource());
		return jdbcTemplate;
	}
	@Bean("studentdao")
	public StudentDao getStudentDao()
	{
		StudentDaoImpl daoImpl=new StudentDaoImpl();
		daoImpl.setJdbcTemplate(getTemplate());
		return daoImpl;
	}
}
