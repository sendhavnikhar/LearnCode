package com.learncode.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.learncode.Dao.CourseDao;

import com.learncode.helper.ConnectionProvider;
import com.mysql.cj.Session;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Get the value of CourseName parameter fom the request
	        String courseName = request.getParameter("btn");

	        // Check if courseName is null or empty
	        if (courseName == null || courseName.isEmpty()) {
	            response.getWriter().println("<h2>Error: CourseName parameter is missing</h2>");
	            return;
	        }

	        // Proceed with your DAO logic to delete the record
	        try {
	            CourseDao dao = new CourseDao(ConnectionProvider.getConnection());
	            boolean deleted = dao.deleteRecord(courseName);

	            if (deleted) {
	             
	            	response.sendRedirect("CourseDetail.jsp");
	            
	            } else {
	                response.getWriter().println("<h2>Error deleting record with CourseName " + courseName + "</h2>");
	            }
	        } catch (Exception e) {
	            response.getWriter().println("<h2>Error: " + e.getMessage() + "</h2>");
	            e.printStackTrace();
	        }
	    }
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
	}

	
	
		

}
	

