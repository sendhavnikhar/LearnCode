	package com.learncode.Servlets;
	
	
	import java.io.File;
	import java.io.FileOutputStream;
	import java.io.IOException;
	import java.io.InputStream;
	
	import java.util.List;
	
	import javax.servlet.ServletException;
	import javax.servlet.annotation.MultipartConfig;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;
	import javax.servlet.http.Part;
	
	import com.learncode.Dao.CourseDao;
	import com.learncode.Entity.Course;
	import com.learncode.helper.ConnectionProvider;
	
	
	@WebServlet("/CourseServlet")
	@MultipartConfig
	public class CourseServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	     
	    public CourseServlet() {
	        super();
	        
	    }
	
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			response.getWriter().append("Served at: ").append(request.getContextPath());
		}
	
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			try {
				
				
				String CourseName = request.getParameter("CourseName");
				String CoursePrice =  request.getParameter("CoursePrice");
				String CourseDetails = request.getParameter("CourseDetails");
				
				
			
		        Part filePart = request.getPart("CoursePic");
	
		       
		        String fileName = filePart.getSubmittedFileName();
	
		        String savePath = "C:/Users/admin/nik/LearnCode/src/main/webapp/uploadedFiles";
		        
		        
		        File fileDir = new File(savePath);
		        if (!fileDir.exists()) {
		            fileDir.mkdir();
		        }
		        
		        
		        
		        
		       
		          
		        FileOutputStream out = new FileOutputStream(new File(savePath + File.separator + fileName));
		        InputStream fileContent = filePart.getInputStream();
		        
		        int read;
		        final byte[] bytes = new byte[1024];
		        while ((read = fileContent.read(bytes)) != -1) {
		            out.write(bytes, 0, read);
		        }
	
		        
				Course course =  new Course(CourseName,CoursePrice,CourseDetails,fileName);
				
				
				CourseDao courseDao = new CourseDao(ConnectionProvider.getConnection());
				
	
			 	if(course!=null) {
					
				 HttpSession session = request.getSession();
					
					
				 
				    courseDao.SaveCourse(course);
				 
				    List<Course> courses = courseDao.getAllCourse();
				    
				     System.out.println("Data Submited SuccessFully");
				     
				     
				     
				  
				    
				    
				    session.setAttribute("allcourse", courses);
					 
					response.sendRedirect("AddCourse.jsp?suc=1");
		    	    
				
					
				}
				
				
				
				
				
				}
				
				
			
				catch (Exception e) {
					e.printStackTrace();
				}
		}
	
	}
