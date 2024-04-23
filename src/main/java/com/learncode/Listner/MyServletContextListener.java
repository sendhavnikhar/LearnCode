package com.learncode.Listner;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRegistration;
import javax.servlet.annotation.WebListener;

import com.learncode.Dao.CourseDao;
import com.learncode.Dao.PaymentDao;
import com.learncode.Dao.UserDao;
import com.learncode.Entity.Course;
import com.learncode.Entity.Payment;
import com.learncode.Entity.User;
import com.learncode.Servlets.LoginServlet;
import com.learncode.helper.ConnectionProvider;

/**
 * Application Lifecycle Listener implementation class MyServletContextListener
 *
 */
@WebListener
public class MyServletContextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public MyServletContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent event)  { 
         
    	UserDao userDao =  new UserDao(ConnectionProvider.getConnection());
		   CourseDao courseDao = new CourseDao(ConnectionProvider.getConnection());
			 
		   PaymentDao paymentDao = new PaymentDao(ConnectionProvider.getConnection());
		   
		   List<User>userlist = userDao.getAllUser();
	        
 	       List<Course> courselist = courseDao.getAllCourse();
 	       
 	       
 	       List<Payment> paymentList = paymentDao.getAllPayments();
    }
	
}
