package com.learncode.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.learncode.Entity.Course;


public class CourseDao {

	
	

	private Connection connection;

	public CourseDao (Connection connection) {
		
		
		this.connection=connection;
	}
	
	
	
	public boolean SaveCourse(Course course) {
		
		boolean f =false;
		
		try {

			String query="insert into course (CourseName,CoursePrice,CourseDetails,CoursePic) values(?,?,?,?)";
			
			PreparedStatement pStatement = this.connection.prepareStatement(query);
			
			
			pStatement.setString(1, course.getCourseName());
			pStatement.setString(2, course.getCoursePrice());	
			pStatement.setString(3, course.getCourseDetails());
			pStatement.setString(4, course.getCoursePic());
			
			pStatement.executeUpdate();
			
			f=true;
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
		
	

public List<Course> getAllCourse() {
	
	List<Course> Courselist = new ArrayList<>();

	
	Course course =null;
try {
	
	
	
	String quary ="SELECT * FROM course";
	
	PreparedStatement preparedStatement = connection.prepareStatement(quary);

	
	
	
	ResultSet set = preparedStatement.executeQuery();
	
	

	
	while(set.next()) {
	
		
		
	  course= new Course();

		
	  course.setCourseId(set.getInt("CourseId"));
	  course.setCourseName(set.getString("CourseName"));
      course.setCoursePrice(set.getString("CoursePrice"));
      course.setCourseDetails(set.getString("CourseDetails"));
      course.setCoursePic(set.getString("CoursePic"));  
      
      Courselist.add(course);
      
      
	}
		  
	
     
	
}
catch (Exception e) {
	
	e.printStackTrace();
}

	
return Courselist;


}


public Course getCourseByName(String courseName) {
    Course course = null;
    String query = "SELECT * FROM course WHERE CourseName = ?";
    
    try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
        preparedStatement.setString(1, courseName);
        ResultSet resultSet = preparedStatement.executeQuery();
        
        if (resultSet.next()) {
            course = new Course(
                resultSet.getString("CourseName"),
                resultSet.getString("CoursePrice"),
                resultSet.getString("CourseDetails"),
                resultSet.getString("CoursePic")
            );
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    
    return course;
}


public boolean deleteRecord(String CourseName) {
    boolean deleted = false;
    try {
        String query = "DELETE FROM course WHERE CourseName = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, CourseName);
        int rowsAffected = preparedStatement.executeUpdate();
 
        // Check if at least one record was deleted
        if (rowsAffected > 0) {
            deleted = true;
        }
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return deleted;
}

}
