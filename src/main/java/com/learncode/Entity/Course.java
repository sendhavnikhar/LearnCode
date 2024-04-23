package com.learncode.Entity;



public class Course {

	
	private int CourseId;
	private String CourseName;
	private String CoursePrice;
	private String CourseDetails;
	private String CoursePic;
	
	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Course(int courseId, String courseName, String coursePrice, String courseDetails, String coursePic) {
		super();
		CourseId = courseId;
		CourseName = courseName;
		CoursePrice = coursePrice;
		CourseDetails = courseDetails;
		CoursePic = coursePic;
	}
	
	
	

	public Course(String courseName, String coursePrice, String courseDetails, String coursePic) {
		super();
		CourseName = courseName;
		CoursePrice = coursePrice;
		CourseDetails = courseDetails;
		CoursePic = coursePic;
	}

	public int getCourseId() {
		return CourseId;
	}

	public void setCourseId(int courseId) {
		CourseId = courseId;
	}

	public String getCourseName() {
		return CourseName;
		
	}

	public void setCourseName(String courseName) {
		CourseName = courseName;
	}

	public String getCoursePrice() {
		return CoursePrice;
	}

	public void setCoursePrice(String coursePrice) {
		CoursePrice = coursePrice;
	}

	public String getCourseDetails() {
		return CourseDetails;
	}

	public void setCourseDetails(String courseDetails) {
		CourseDetails = courseDetails;
	}

	public String getCoursePic() {
		return CoursePic;
	}

	public void setCoursePic(String coursePic) {
		CoursePic = coursePic;
	}

	
	@Override
	public String toString() {
		return "Course [CourseId=" + CourseId + ", CourseName=" + CourseName + ", CoursePrice=" + CoursePrice
				+ ", CourseDetails=" + CourseDetails + ", CoursePic=" + CoursePic + "]";
	}
	
	
	
	
}
