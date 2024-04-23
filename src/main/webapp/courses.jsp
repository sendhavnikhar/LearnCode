<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LearnCode-All Courses</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   
    
    
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
          
    
     
    </div>
  </div>
  
 </nav>
 

<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
  }
  .container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    display: flex;
    flex-wrap: wrap;
  }
  .course-photo {
    flex: 0 0 40%; /* Set the width of the photo column */
    margin-right: 20px;
  }
  .course-photo img {
    max-width: 100%;
    height: auto;
    display: block;
  }
  .course-content {
    flex: 1;
  }
  h1 {
    font-size: 24px;
    margin-top: 0;
  }
  p {
    line-height: 1.6;
  }
</style>
</head>
<body>

<div class="container">
  <div class="course-photo">
    <img src="img/sql.png" alt="Course Photo" style="max-height: 260px; max-width:550px;">
  </div>
  
  <br><br><br><br>
  <div class="course-content">
    <h1>Introduction To Sql </h1>
    <p>This course will introduce you to the basics of HTML and CSS, the building blocks of web development. Whether you're a complete beginner or looking to refresh your skills, this course will provide you with the fundamental knowledge needed to create your own websites.</p>
    <h2>What You'll Learn:</h2>
    <ul>
      <li>HTML syntax and structure</li>
      <li>CSS styling and layout</li>
      <li>Creating responsive web designs</li>
      <li>Best practices for web development</li>
    </ul>
    <p>By the end of this course, you'll have the skills to create your own simple websites and be well on your way to becoming a proficient web developer.</p>
  </div>
</div>



<%@include file="fotter.jsp" %>
</body>
</html>