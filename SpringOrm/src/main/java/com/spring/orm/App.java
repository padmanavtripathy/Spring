package com.spring.orm;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.orm.dao.StudentDaoImpl;
import com.spring.orm.entity.Student;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        @SuppressWarnings("resource")
		ApplicationContext context=new ClassPathXmlApplicationContext("config.xml");
        StudentDaoImpl daoImpl=context.getBean("studentDao",StudentDaoImpl.class);
        Student student=new Student(2023,"fgjhfj","nnbvn");
        int r=daoImpl.insert(student);
        System.out.println(r);
        
    }
}
