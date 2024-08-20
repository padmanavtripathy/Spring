package com.spring.jdbc;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.jdbc.dao.StudentDao;
import com.spring.jdbc.entitys.Student;

/**
 * Hello world!
 *
 */
public class App 
{
	@SuppressWarnings("resource")
	public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
		ApplicationContext context=new ClassPathXmlApplicationContext("com/spring/jdbc/configuration.xml");
//		ApplicationContext context=new AnnotationConfigApplicationContext(JdbcConfig.class);
		
		StudentDao studentDao=context.getBean("studentdao",StudentDao.class);
		Student student=new Student();
		student.setId(3);
		student.setName("Avinash");
		student.setAddress("blsr");
		//insert
//		int result=studentDao.insert(student);
//		System.out.println(result);
//		
		//update
//		int result=studentDao.update(student);
//		System.out.println(result);
		
		//delete
//		int result=studentDao.delete(student.getId());
//		System.out.println(result);
		
		//select single data
//		Student student2=studentDao.getStudent(4);
//		System.out.println(student2);
//		
		
		//Select all the students
		List<Student> students=studentDao.getAllStudent();
		for(Student st:students)
		{
			System.out.println(st);
		}
    }
}
