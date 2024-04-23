package com.learncode.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.learncode.Dao.ContectDao;
import com.learncode.Entity.Contect;
import com.learncode.helper.ConnectionProvider;


@WebServlet("/ContectServlet")
public class ContectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ContectServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String message = request.getParameter("message");
			
			Contect cont = new Contect(name,email,message);
			
			ContectDao contectDao = new ContectDao(ConnectionProvider.getConnection());
			
		  contectDao.SaveContect(cont);
		  
		
			
			if(cont!=null) {
				HttpSession session = request.getSession();
				response.sendRedirect("Contect.jsp?success=1");
			
				
				
			}
			
		}
		
		
		   catch (Exception e) {
			e.printStackTrace();
		}
	}

}
