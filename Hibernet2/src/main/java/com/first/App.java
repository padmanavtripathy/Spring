package com.first;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;  
/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "project started");

        SessionFactory factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
        org.hibernate.Session session=factory.openSession();
        Student st=new Student();
        st.setId(200);
        st.setName("Suman");
        st.setCity("bbsr");
        
        Address ad=new Address();
        ad.setStreet("Sarasada");
        ad.setCity("BDK");
        ad.setOpen(true);
        ad.setX(1234.6666);
//        File file=new File("first/t1.jpg");
//        byte[] bFile = new byte[(int) file.length()];
//        try {
//        	FileInputStream fileInputStream = new FileInputStream(file);
//        	fileInputStream.read(bFile);
//   	     fileInputStream.close();
//           } catch (Exception e) {
//   	     e.printStackTrace();
//           }
      
        session.beginTransaction();
        session.save(st);
        System.out.println("hii");
        session.save(ad);
        session.getTransaction().commit();
        session.close();
        System.out.println("Done......");
    }
}
