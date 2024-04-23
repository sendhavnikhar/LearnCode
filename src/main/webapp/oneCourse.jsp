<%@page import="com.learncode.Entity.User"%>

<%@ page import="com.learncode.Dao.CourseDao" %>
<%@ page import="com.learncode.Entity.Course" %>
<%@ page import="com.learncode.helper.ConnectionProvider" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title></title>

  <style>
       
  .payment-container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.payment-form {
  border: 5px solid #ccc;
  border-radius: 10px;
  padding: 30px;
  max-width: 1000px;
  width: 100%;
}

.payment-form1 {
  border: 2px solid black;
  border-radius: 5px;
  padding: 10px;
  max-width: 1000px;
  width: 70%;
}
.card-img {
  width: 100%;
  height: auto;
  border-radius: 5px;
  margin-bottom: 10px;
}



label {
  font-weight: bold;
}

p {
  margin: 5px 0;
}
       
       </style>  
             	
</head>
<body>

<% User user =(User) session.getAttribute("currentuser"); 
%>

<!-- listview end -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"  data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"><img src="img/list.png"  style="width: 20px; height: 20px;" > &nbsp;  LearnTube</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="about.jsp">About</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Contect.jsp">Contect</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="help.jsp">Help</a>
        </li>
        
        </ul>
          
      <ul class="navbar-nav list-unstyled d-flex justify-content-end">
     
        
 
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp"  onclick="confirmLogout()">LogOut</a>
        </li>
       
        
      </ul>
    </div>
  </div>
  
 </nav>
 
 
 <%
 
    String courseName = request.getParameter("courseName");
    CourseDao courseDao = new CourseDao(ConnectionProvider.getConnection());
    Course course = courseDao.getCourseByName(courseName);
         
    %>
          
          
     
 
  
  <div class="payment-container">
    <div class="payment-form">
      <form id="paymentForm" action="PaymentServlet" method="post">
      <h2 class="text-center"> Course Details</h2>
        
        <div class="payment-form1">
        <img src="uploadedFiles/<%=course.getCoursePic() %>" class="card-img" alt="..." style="max-height: 55%; max-width:55%;">
        </div>
        <br>
        <p>Course Name :  <%=course.getCourseName() %></p>
        <label for="cvv">Course Price</label>
        <p>Course Price :  <%=course.getCoursePrice() %></p>
        <label for="name">Course Detail</label>
        <p>Course Details :  <%=course.getCourseDetails() %></p>
        
        
        <a href="payment.jsp?CourseName=<%=course.getCourseName() %>" class="btn btn-primary">BuyNow</a>
      </form>
      
    </div>
  </div>



</body>
</html>