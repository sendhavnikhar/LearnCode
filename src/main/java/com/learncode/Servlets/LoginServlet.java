package com.learncode.Servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.learncode.Dao.CourseDao;
import com.learncode.Dao.PaymentDao;
import com.learncode.Dao.UserDao;
import com.learncode.Entity.Course;
import com.learncode.Entity.Payment;
import com.learncode.Entity.User;
import com.learncode.helper.ConnectionProvider;



@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
		try {
			
			String EmailId= request.getParameter("EmailId");
			String Password= request.getParameter("Password");
			
			 
		   UserDao userDao =  new UserDao(ConnectionProvider.getConnection());
		   CourseDao courseDao = new CourseDao(ConnectionProvider.getConnection());
			  	
		   PaymentDao paymentDao = new PaymentDao(ConnectionProvider.getConnection());
		   User adminUser = userDao.checkAdmin(EmailId, Password);
	       User use = userDao.checkUser(EmailId, Password);
		
			if(adminUser != null && adminUser.getEmailId().equals("admin@gmail.com") && adminUser.getPassword().equals("admin")) {
				
				
				    HttpSession session = request.getSession();
		            session.setAttribute("currentuser", adminUser);
		            session.setAttribute("isLoggedIn", true);
                    
		            
		 	        List<User>userlist = userDao.getAllUser();
		 	        
		 	       List<Course> courselist = courseDao.getAllCourse();
		 	       
		 	       
		 	       List<Payment> paymentList = paymentDao.getAllPayments();
		 	      
                    session.setAttribute("alluser", userlist);
                     
                    session.setAttribute("allcourse", courselist);
                    
                    session.setAttribute("allPayments", paymentList);
                    
                     
  
		            response.sendRedirect("AdminPage.jsp?nik=1");
			}
	       	       
	       else if(use==null) {
				
				
				
				
				 response.sendRedirect("Login.jsp?error=1");
			}
			
			

			else {
				
				HttpSession session = request.getSession();
				session.setAttribute("currentuser",use);
				session.setAttribute("isLoggedIn", true);
				
				  
		 	    List<Course> courselist = courseDao.getAllCourse();
		 	      
                session.setAttribute("allcourse",courselist);
                 
				response.sendRedirect("dashboard.jsp?success=1");
				
			}
			 
			 
			
 			
		}
		
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}

}
