package com.learncode.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.learncode.Dao.UserDao;
import com.learncode.Entity.User;
import com.learncode.helper.ConnectionProvider;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public RegisterServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		

		try {
			
			String UserName = request.getParameter("UserName");
			String EmailId = request.getParameter("EmailId");
		    String MobileNo =request.getParameter("MobileNo");
			String Password = request.getParameter("Password");
			
			
			 UserDao userDao =  new UserDao(ConnectionProvider.getConnection());
			 
				User use = userDao.checkUser1(EmailId);
				
				
				if(use!=null) {
					
					HttpSession session = request.getSession();
					
					response.sendRedirect("Register.jsp?success=1");
					
				}
				
				
				else {
					
					User user = new User(UserName,EmailId,MobileNo,Password);
					UserDao dao = new UserDao(ConnectionProvider.getConnection());
					
					dao.saveUser(user);
					
				
					response.sendRedirect("Login.jsp?success=1");

					
				}
			
			
			
			
			
		}
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
	}

	
}
